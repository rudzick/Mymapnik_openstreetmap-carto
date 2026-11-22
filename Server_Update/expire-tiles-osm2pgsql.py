#!/usr/bin/python3
# SPDX-License-Identifier: GPL-3.0-or-later
"""
Expire tiles from a osm2pgsql expired tiles file.

"""

import sys
import os
from datetime import datetime

CACHE_BASIS = '/var/cache/mapproxy/cache_data/'
CACHE_VERZEICHNISSE = ["osm_cache_hq_EPSG3857/", "gaslaternen_dd_cache_hq_EPSG3857/", "gaslaternen_dd_nacht_cache_hq_EPSG3857/"]

expired_tiles = 0

def main():
    global expired_tiles

    if len(sys.argv) < 2:
        print(f"Nutzung: python {sys.argv[0]} <dateipfad>")
        sys.exit(1)

    for dateipfad in sys.argv[1:]:

        # Fehlende Dateien überspringen, die übrigen trotzdem abarbeiten
        if not os.path.exists(dateipfad):
            print(f"Fehler: Die Datei '{dateipfad}' existiert nicht.")
            continue

        jetzt = datetime.now()
        print(jetzt.strftime("%d.%m.%Y %H:%M:%S"),'  Datei gefunden: ', dateipfad)
        expired_tiles = 0
        with open(dateipfad, "r", encoding="utf-8") as datei:
            for zeile in datei:
                zeile = zeile.strip()
                if zeile:
                    expire_tile(zeile)

        os.remove(dateipfad)
        jetzt = datetime.now()
        print(jetzt.strftime("%d.%m.%Y %H:%M:%S"),'  ', dateipfad,':',expired_tiles,'tiles gelöscht')

def tile_dateiname(cache_verzeichnis, z, x, y):

    x1 = x % 1000
    x2 = ( x // 1000 ) % 1000
    x3 = x // 1000000
    y1 = y % 1000
    y2 = ( y // 1000 ) % 1000
    y3 = y // 1000000

    return CACHE_BASIS + cache_verzeichnis + '{:02d}/{:03d}/{:03d}/{:03d}/{:03d}/{:03d}/{:03d}.png'.format(z, x3, x2, x1, y3, y2, y1)

def loesche_tile(dateiname):

    global expired_tiles

    if os.path.exists(dateiname):
        os.remove(dateiname)
        expired_tiles += 1
        return True
    return False

def expire_tile(tile_zxy):

    z, x, y = [int(p) for p in tile_zxy.split('/')]

    for cache_verzeichnis in CACHE_VERZEICHNISSE:

        if loesche_tile(tile_dateiname(cache_verzeichnis, z, x, y)):

            # if z=20 remove also tiles for z=21,22,23
            if z == 20:
                for dz in range(1, 4):
                    xs = x << dz
                    ys = y << dz
                    for ix in range(xs, xs + (1 << dz)):
                        for iy in range(ys, ys + (1 << dz)):
                            loesche_tile(tile_dateiname(cache_verzeichnis, z + dz, ix, iy))


if __name__ == "__main__":
    main()

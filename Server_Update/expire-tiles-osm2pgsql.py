#!/usr/bin/python3
# SPDX-License-Identifier: GPL-3.0-or-later
"""
Expire tiles from a osm2pgsql expired tiles file.

"""

import sys
import os

def main():

    if len(sys.argv) < 2:
        print("Fehler: Bitte gib einen Dateipfad an.")
        print(f"Nutzung: python {sys.argv[0]} <dateipfad>")
        sys.exit(1)

    for i in range(1,len(sys.argv)):
        # Das erste echte Argument abgreifen
        dateipfad = sys.argv[i]

        # Optional: Prüfen, ob die Datei überhaupt existiert
        if os.path.exists(dateipfad):
            print(f"Datei gefunden: {dateipfad}")
            expired_tiles = 0
            with open(dateipfad, "r", encoding="utf-8") as datei:
                for zeile in datei:
                    expire_tile(zeile.strip(),expired_tiles)
                    
            os.remove(dateipfad)
            print(dateipfad,':',expired_tiles,'gelöscht')
                    
        else:
            print(f"Fehler: Die Datei '{dateipfad}' existiert nicht.")
            sys.exit(0)

def expire_tile(tile_zxy, gel_kacheln):

    parz = tile_zxy.split('/')
    parz = [int(p) for p in parz]

    z = parz[0]
    x = parz[1]
    y = parz[2]

    x1 = x % 1000
    x2 = ( ( x - x1 ) // 1000 ) % 1000
    x3 = x // 1000000
    y1 = y % 1000
    y2 = ( ( y - y1 ) // 1000 ) % 1000
    y3 = y // 1000000 
    
    cache_verzeichnisse = ["osm_cache_hq_EPSG3857/", "gaslaternen_dd_cache_hq_EPSG3857/", "gaslaternen_dd_nacht_cache_hq_EPSG3857/"]

    for cache_verzeichnis in cache_verzeichnisse:


        
        dateiname = '/var/cache/mapproxy/cache_data/' + cache_verzeichnis + '{:02d}/{:03d}/{:03d}/{:03d}/{:03d}/{:03d}/{:03d}.png'.format(z, x3, x2, x1, y3, y2, y1)
        # print(dateiname)
        if os.path.exists(dateiname):
            os.remove(dateiname)
            gel_kacheln += 1

    # if z=20 remove also tiles for z=21,22,23
    if z == 20 :
        
        for z in range(parz[0]+1,parz[0]+4):
            zz = z-parz[0]
            x = parz[1]<<zz
            y = parz[2]<<zz

            for ix in range(x,x+(1<<zz)):
                for iy in range(y,y+(1<<zz)):
                    x1 = ix % 1000
                    x2 = ( ( ix - x1 ) // 1000 ) % 1000
                    x3 = ix // 1000000
                    y1 = iy % 1000
                    y2 = ( ( iy - y1 ) // 1000 ) % 1000
                    y3 = iy // 1000000
                    
                    for cache_verzeichnis in cache_verzeichnisse:
                        dateiname = '/var/cache/mapproxy/cache_data/' + cache_verzeichnis + '{:02d}/{:03d}/{:03d}/{:03d}/{:03d}/{:03d}/{:03d}.png'.format(z, x3, x2, x1, y3, y2, y1)
                        # print(dateiname)
                        if os.path.exists(dateiname):
                            os.remove(dateiname)
                            gel_kacheln += 1
        

if __name__ == "__main__":
    main()


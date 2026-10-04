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
            with open(dateipfad, "r", encoding="utf-8") as datei:
                for zeile in datei:
                    expire_tile(zeile.strip())
                    
                    os.remove(dateipfad)
                    
                else:
                    print(f"Fehler: Die Datei '{dateipfad}' existiert nicht.")
                    sys.exit(0)

def expire_tile(tile_zxy):

    cache_verzeichnisse = ["osm_cache_hq_EPSG3857/", "gaslaternen_dd_cache_hq_EPSG3857/", "gaslaternen_dd_nacht_cache_hq_EPSG3857/"]

    for cache_verzeichnis in cache_verzeichnisse:

        
        dateiname = '/var/cache/mapproxy/cache_data/' + cache_verzeichnis + tile_zxy + '.png'
        # print(dateiname)
        if os.path.exists(dateiname):
            os.remove(dateiname)

        # if z=20 remove also tiles for z=21,22,23
        if parz[0] == 20 :
            parz = tile_zxy.split('/')
            parz = [int(p) for p in parz]
        
            for z in range(parz[0]+1,parz[0]+4):
                zz = z-parz[0]
                x = parz[1]*2**zz
                y = parz[2]*2**zz
                for ix in range(x,x+2**zz):
                    for iy in range(y,y+2**zz):
                        ztile_xyz = str(z) + '/' + str(ix) + '/' + str(iy)
                        dateiname = '/var/cache/mapproxy/cache_data/' + cache_verzeichnis + tile_zxy + '.png'
                        # print(dateiname)
                        if os.path.exists(dateiname):
                            os.remove(dateiname)
        

if __name__ == "__main__":
    main()


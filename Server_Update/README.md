##### Skripte zum Aufbau und inkrementellen Update der Postgis-Datenbank, zum Löschen veralteter Tiles aus dem Cache und Löschen von Tabelleneinträgen in der Postgis-Datenbank, die außerhalb der Bounding-Box liegen.

- Aufbau der Postgis-Datenbank mit osm2pgsql<br/>
[import_osm_planet_berlin_mapnik](import_osm_planet_berlin_mapnik)

- Inkrementelles Update der Postgis-Datenbank mit osm2pgsql-replication<br/>
[update_osm_planet_dach_mapnik](update_osm_planet_dach_mapnik)

- Shellskript zur Erzeugung der Lookup-Tabelle für Baumarten<br/>
[create_lookup_table_for_tree_species.sh](create_lookup_table_for_tree_species.sh)
   - SQL für die Lookup-Tabelle für Baumarten<br/>
[tree_species.sql](tree_species.sql)<br/>
Die Tabelle ordnet botanischen Namen (Schlüssel `treespecies`, komplett klein geschrieben, weil mit dem klein geschriebenen OSM-Tag `species` verglichen wird) deutsche Namen zu. Hybride in beiden Schreibweisen eintragen, mit `×` und mit `x`, weil beide in OSM vorkommen. Die Datei wird auch im Repo [Themepark_Inkstitch](https://github.com/rudzick/Themepark_Inkstitch/blob/master/Server_Update/README.md) für die Datenbank `themeparktest` verwendet; dort hängt die View `tree_species_view` von der Tabelle ab. Weil die Datei mit `DROP TABLE IF EXISTS tree_species` beginnt, müssen abhängige Views vorher gelöscht werden.

- Postprozessing-Skript, das veraltete Tiles aus dem Cache löscht<br/>
[run-expiry.sh](run-expiry.sh)
  - Python-Skript, das vom Postprozessing-Skript aufgerufen wird. Es liest die von osm2pgsql (`--expire-tiles`) geschriebenen Listen veralteter Tiles (`points.tiles`, `lines.tiles`, `polygons.tiles`), löscht die betroffenen Tiles aus den MapProxy-Caches unter `/var/cache/mapproxy/cache_data/` (bei Zoomstufe 20 auch die darunterliegenden Tiles der Zoomstufen 21 bis 23) und anschließend die Listen.<br/>
[expire-tiles-osm2pgsql.py](expire-tiles-osm2pgsql.py)
  - Python-Skript, das veraltete Metatiles aus einer OSM-Change-Datei ermittelt und ihre Änderungszeit zurücksetzt; wird von `run-expiry.sh` nicht aufgerufen.<br/>
[expire-tiles.py](expire-tiles.py)

- Shellskript, das Tabelleneinträge in der Postgis-Datenbank löscht, die außerhalb der Bounding-Box für D-A-CH liegen.<br/>
[remove_foreign_data.sh](remove_foreign_data.sh)
   - SQL-Kommando, das diese Daten löscht<br/>
[remove_foreign_data.sql](remove_foreign_data.sql)

- Shellskript, das `functions.sql`, `indexes.sql` und `common-values.sql` einspielt und die Views für den BBox-Server anlegt<br/>
[create_views_for_bbox_server.sh](create_views_for_bbox_server.sh)
   - SQL für die Views `baeume_view`, `straeucher_view`, `parzellengrenzen_view` und `gebaeude_hh_view` sowie die Funktion `allotment_plots_25833_zxy` (Vektorkacheln der Parzellengrenzen in EPSG:25833)<br/>
[views_for_bbox_server.sql](views_for_bbox_server.sql)

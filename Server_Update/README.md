##### Skripte zum Aufbau und inkremetellem Update der Postgis-Datenbank, zum Löschen veralteter Tiles aus dem Cache und Löschen von Tabelleinträgen in der Postgis-Datenbank, die außerhalb der Bounding-Box liegen.

- Aufbau der Postgis-Datenbank mit osm2psql<br/>
[import_osm_planet_berlin_mapnik](import_osm_planet_berlin_mapnik)

- Inkremetelles Update der Postgis-Datenbank mit osm2psql-replication<br/>
[update_osm_planet_dach_mapnik](update_osm_planet_dach_mapnik)

- Shellskript zur Erzeugung von Lookup-Table für Baumarten<br/>
[create_lookup_table_for_tree_species.sh](create_lookup_table_for_tree_species.sh)
   - SQL für Lookup-Table für Baumarten<br/>
[tree_species.sql](tree_species.sql)<br/>
Die Tabelle ordnet botanischen Namen (Schlüssel `treespecies`, komplett klein geschrieben, weil mit dem klein geschriebenen OSM-Tag `species` verglichen wird) deutsche Namen zu. Hybride in beiden Schreibweisen eintragen, mit `×` und mit `x`, weil beide in OSM vorkommen. Die Datei wird auch im Repo [Themepark_Inkstitch](https://github.com/rudzick/Themepark_Inkstitch/blob/master/Server_Update/README.md) für die Datenbank `themeparktest` verwendet; dort hängt die View `tree_species_view` von der Tabelle ab. Weil die Datei mit `DROP TABLE IF EXISTS tree_species` beginnt, müssen abhängige Views vorher gelöscht werden.

- Postprozessing-Skript, das veraltete Tiles aus dem Cache löscht<br/>
[run-expiry.sh](run-expiry.sh)
  - Python-Skript, das vom Postprozessing-Skript aufgerufen wird und die veraltete Tiles ermittelt und löscht.<br/>
[expire-tiles.py](expire-tiles.py)

- Shellskript, das Tabelleinträge in der Postgis-Datenbank löscht, die außerhalb der Bounding-Box für D-A-CH liegen.<br/>
[remove_foreign_data.sh](remove_foreign_data.sh)
   - SQL-Kommando, das diese Daten löscht<br/>
[remove_foreign_data.sql](remove_foreign_data.sql)

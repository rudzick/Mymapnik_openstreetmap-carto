#!/bin/bash
set -euo pipefail
/home/renderaccount/Mymapnik_openstreetmap-carto/Server_Update/expire-tiles-osm2pgsql.py /home/postgres/download/points.tiles /home/postgres/download/lines.tiles /home/postgres/download/polygons.tiles




#!/bin/bash
set -euo pipefail
# als user postgres
psql -d gis -a -f /home/renderaccount/Mymapnik_openstreetmap-carto/Server_Update/views_for_bbox_server.sql
psql -d gis -a -f /home/renderaccount/Mymapnik_openstreetmap-carto/indexes.sql


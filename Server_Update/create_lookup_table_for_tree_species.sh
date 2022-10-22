#!/bin/bash
set -euo pipefail
# als user postgres
psql -d gis -a -f /home/renderaccount/Mymapnik_openstreetmap-carto/Server_Update/tree_species.sql

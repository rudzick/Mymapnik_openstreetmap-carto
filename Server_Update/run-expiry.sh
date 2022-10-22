#!/bin/bash
set -euo pipefail
/home/renderaccount/Mymapnik_openstreetmap-carto/Server_Update/expire-tiles.py /home/postgres/download/changes.osc.gz --node-cache /home/postgres/download/flat.nodes --min 14 --max 23




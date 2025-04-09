#!/bin/sh
 docker compose down
 echo "Starting dOSINT..."
 docker compose up --build -d
 echo "Dropping into a shell inside de dOSINT"
 docker compose run --rm dosint /bin/bash
 docker compose up --remove-orphans -d
#!/bin/bash

DB_HOST="localhost"
DB_USER="usuario_db"
DB_PASSWORD="J3x!vT7s9QwZ@hF1"
DB_NAME="caruso_data"
BACKUP_DIR="/ruta/a/carpeta_backup"
DATE=$(date +"%Y%m%d_%H%M%S")
BACKUP_FILE="${BACKUP_DIR}/${DB_NAME}_backup_${DATE}.sql"

if [ ! -d "$BACKUP_DIR" ]; then
    mkdir -p "$BACKUP_DIR"
fi

mysqldump -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" > "$BACKUP_FILE"

if [ $? -eq 0 ]; then
    echo "Backup completado exitosamente en $BACKUP_FILE"
else
    echo "Error: El backup falló"
fi


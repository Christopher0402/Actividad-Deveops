#!/bin/bash

BUCKET_NAME="christopheractividad1"
BACKUP_FILE="backup_$(date +%F).tar.gz"
LOG_FILE="backup.log"
SOURCE_DIR="."

echo "Iniciando respaldo..." | tee -a $LOG_FILE

# Crear backup
# Se usa 'c' para crear, 'z' para comprimir (gzip) y 'f' para el archivo
tar -czf $BACKUP_FILE $SOURCE_DIR >> $LOG_FILE 2>&1

# Subir a S3
# Corrección: El "if" debe evaluar el comando directamente antes del punto y coma
if aws s3 cp $BACKUP_FILE s3://$christopheractividad1/ >> $LOG_FILE 2>&1; then
    echo "Respaldo subido exitosamente." | tee -a $LOG_FILE
else
    echo "Error en la subida del respaldo." | tee -a $LOG_FILE
fi

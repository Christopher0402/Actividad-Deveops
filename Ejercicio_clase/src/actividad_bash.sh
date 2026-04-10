#!/bin/bash
echo "Sincronizando archivos con S3"
aws s3 sync src/ s3://christopheractividad1  --delete
echo "Despliegue completado"

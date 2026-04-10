#!/bin/bash
echo "Sincronizando archivos con S3"
aws s3 sync src/ s3://NOMBREDELBUCKET --delete
echo "Despliegue completado"

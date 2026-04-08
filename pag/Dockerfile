# For more information, please refer to https://aka.ms/vscode-docker-python
FROM python:3.9

#Establece el directorio de trabajo dentro del contenedor
WORKDIR /pag

#Copia el archivo de dependecias e instalalas
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt 

#Copia el codigo de la aplicacion al contenedor
COPY . .

#Expone el puerto 5000
EXPOSE 5001

# Comando para ejecutar la aplicacion Flask
CMD ["python", "archivo.py"]

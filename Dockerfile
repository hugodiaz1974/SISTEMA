# utiliza una imagen de base python
FROM python:3.9-slim    

# establece el directorio de trabajo en /app
WORKDIR /appsistema

# copia el archivo requirements.txt al contenedor en /app
COPY requirements.txt requirements.txt

# instala las dependencias de Python
RUN pip install -r requirements.txt

# copia el resto del código de la aplicación al contenedor en /app
COPY . .

# expone el puerto 5000 para la aplicación
EXPOSE 5000

# Comando para ejecutar la aplicación
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

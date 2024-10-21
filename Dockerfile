# Usar una imagen oficial de Python como base 
FROM python:3.9-slim 
# Establecer el directorio de trabajo en el contenedor 
WORKDIR /app 
# Copiar los archivos de la aplicación al contenedor 
COPY . . 
# Instalar las dependencias 
RUN pip install -r requirements.txt 
# Exponer el puerto 5000 para Flask 
EXPOSE 5000 
# Comando para ejecutar la aplicación 
CMD ["python", "app.py"]
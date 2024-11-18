# Base image
FROM python:3.9-slim

# Configuración del directorio de trabajo
WORKDIR /app

# Copiar dependencias y código fuente
COPY requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
COPY . /app

# Exponer el puerto
EXPOSE 8000

# Comando para ejecutar la API
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]


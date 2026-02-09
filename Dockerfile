#Base Image (Official Python Image)
FROM python:3.9-slim

#working directory inside the container
WORKDIR /app

#copy files from laptop to the container
COPY requirements.txt .
COPY app.py .
COPY model.pkl .

# Installing the dependencies
RUN pip install --no-cache-dir -r requirements.txt

#Expose PORT
EXPOSE 8000

#Command to run the app
CMD ["uvicorn","app:app","--host","0.0.0.0","--port","8000"]


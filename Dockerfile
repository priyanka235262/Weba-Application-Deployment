#Creating a Dockerfile
# Use a base image with Python already installed
FROM python:3.9-slim-buster
# Set the working directory in the container
WORKDIR /app
# Copy the requirements file into the container
COPY requirements.txt .
# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt
# Copy the application code into the container
COPY ..
# Expose the port the application listens on
EXPOSE 5000
# Set the command to run the application
CMD [ "python" , "app.py" ]


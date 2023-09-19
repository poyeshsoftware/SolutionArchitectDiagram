# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Install Graphviz
RUN apt-get update -y && apt-get install -y graphviz

# Set the working directory in the container to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

RUN mkdir -p /app/output && chmod 777 /

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org diagrams

# Run your Python script when the container launches
CMD ["python", "main.py"]

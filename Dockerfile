# Use an official Python runtime as a parent image
FROM python:2.7-slim

# install pytest
RUN pip install -U pytest

RUN pip install pip-hello-world

# Set the working directory to /app
WORKDIR /app

COPY ./requirements.txt /app/requirements.txt

RUN pip install -r requirements.txt

# Copy the current directory contents into the container at /app
COPY . /app

# CMD ["pytest"]

# # Install any needed packages specified in requirements.txt
# RUN pip install --trusted-host pypi.python.org -r requirements.txt

# # Make port 80 available to the world outside this container
# EXPOSE 80

# # Define environment variable
# ENV NAME World

# # Run app.py when the container launches
# CMD ["python", "app.py"]

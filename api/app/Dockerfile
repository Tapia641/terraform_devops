# Use the official Python 3.11.4 image as the base image for the container
FROM python:3.11.4

# Set the image author to luis_tapia
LABEL authors="luis_tapia"

# Set the working directory for the container to /usr/src/app
WORKDIR /usr/src/app

# Copy the requirements.txt file from the local directory to the working directory in the container
COPY requirements.txt .

# Ensure that the pip package installer is installed in the container
RUN python3 -m ensurepip

# Install the latest versions of pip and setuptools in the container
RUN pip install --no-cache --upgrade pip setuptools

# Install all of the packages that are listed in the requirements.txt file
RUN pip install -r requirements.txt

# Add the /usr/src/app/src directory to the PYTHONPATH environment variable
ENV PYTHONPATH="${PYTHONPATH}:/usr/src/app/src"

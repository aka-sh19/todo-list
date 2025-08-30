# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Install the python packages needed to run the app
RUN pip install Flask gunicorn

# Copy the rest of the application's code into the container at /app
COPY . .

# Expose port 5000 as this is where gunicorn will run
EXPOSE 5000

# Command to run the application using Gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "main:app"]
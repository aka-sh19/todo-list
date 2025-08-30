# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the rest of the application's code into the container at /app
COPY . .

# Expose port 5000 as this is a Flask app
EXPOSE 5000

# Command to run the application using Flask's built-in server
CMD ["flask", "run", "--host=0.0.0.0"]
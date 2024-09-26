# Use the official Python image as the base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /PlutoXML

# Copy the requirements file to the container
COPY requirements.txt .

# Install the required Python packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code to the container
COPY . .

# Expose the port the app runs on (if applicable)
# EXPOSE 8080

# Command to run the application
CMD ["python", "your_script.py"]

# Use an official Python image as the base
FROM python:3.10-slim

# Set the working directory
WORKDIR /app

# Install system dependencies
RUN apt-get update && apt-get install -y \
    curl unzip && \
    rm -rf /var/lib/apt/lists/*

# Install Rclone
RUN curl -fsSL https://rclone.org/install.sh | bash

# Copy requirements.txt and install Python dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application files
COPY . .

# Set environment variables (optional)
ENV PYTHONUNBUFFERED=1

# Start the bot (modify as needed)
CMD ["python", "main.py"]

# Use an official Python image
FROM python:3.10-slim

# Set the working directory inside the container
WORKDIR /app

# Copy all repo files into the container
COPY . .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port your app runs on (adjust if needed)
EXPOSE 5000

# Run the app (update if your main file has a different name)
CMD ["python", "app.py"]

# Using a lightweight base image.
FROM python:3.9-slim

# set the enviromnment variable to prevent from writing .pyc files and buffer output. 
# Set environment variables to prevent Python from writing .pyc files and buffer output
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Set the working directory insife the container. 
WORKDIR /app

# Copy only the required files
COPY requriement.txt  /app/
COPY app.py /app/
COPY  templates /app/templates
COPY static /app/static

# Install python dependencies 
RUN pip install --no-cache-dir -r requriement.txt

# Expose the port the app runs on 
EXPOSE 8000

# Run the application
CMD ["python", "app.py"]



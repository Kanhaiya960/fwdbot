FROM python:3.9-slim-buster

# Update and install dependencies
RUN apt update && apt upgrade -y && apt install git -y

# Copy requirements file and install Python dependencies
COPY requirements.txt /requirements.txt
RUN pip3 install -U pip && pip3 install -U -r /requirements.txt

# Create the application directory and set it as the working directory
RUN mkdir /fwdbot
WORKDIR /fwdbot

# Copy the start script
COPY start.sh /start.sh

# Expose port 8080 for health checks
EXPOSE 8080

# Add a lightweight HTTP health check server
RUN pip3 install flask
COPY health_check.py /health_check.py

# Start the health check server and the bot script
CMD ["bash", "-c", "python3 /health_check.py & /bin/bash /start.sh"]

# Base image
FROM alpine:3.8

# Create working directory
RUN mkdir /var/flaskapp
WORKDIR /var/flaskapp

# Copy files
COPY . .

# Install Python and Flask
RUN apk update && \
    apk add --no-cache python3 py3-pip && \
    pip3 install -r requirements.txt

# Expose port
EXPOSE 5000

# Run the app
CMD ["python3", "app.py"]


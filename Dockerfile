# Use official Python image as base
FROM python:3.10

# Set the working directory
WORKDIR /app

# Install hello-wordsmith from GitHub
RUN pip install git+https://github.com/wordsmith-ai/hello-wordsmith -q

RUN pip install chromadb==0.4.15

# Copy entrypoint script (if needed)
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Expose necessary ports (if applicable)
EXPOSE 5000

# Default command to start the application
CMD ["/entrypoint.sh"]
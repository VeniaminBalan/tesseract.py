# Base image using python:3.9-slim
FROM python:3.9-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Install Tesseract OCR and necessary packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    tesseract-ocr \
    tesseract-ocr-eng \
    tesseract-ocr-rus \
    tesseract-ocr-ron \
    build-essential \
    libglib2.0-0 \
    libsm6 \
    libxext6 \
    libxrender-dev \
    && rm -rf /var/lib/apt/lists/*

# Install Python dependencies for OCR-related apps
RUN pip install --no-cache-dir Pillow pytesseract gunicorn

# Set working directory for future child images
WORKDIR /app

# Expose the default port for Flask apps
EXPOSE 8000

# This base image is ready to be extended!

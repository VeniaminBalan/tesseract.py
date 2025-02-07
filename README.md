# Python 3.9 Slim Base Image for OCR Applications

This repository provides a lightweight Docker image based on `python:3.9-slim` with Tesseract OCR and essential packages pre-installed for building Optical Character Recognition (OCR) applications.

## Features
- **Python 3.9 (slim)**: Minimal base image for reduced size.
- **Tesseract OCR**: Installed with support for multiple languages:
  - English (`eng`)
  - Russian (`rus`)
  - Romanian (`ron`)
- **Additional Python Libraries**:
  - `Pillow`: For image processing
  - `pytesseract`: Python wrapper for Tesseract OCR
  - `gunicorn`: WSGI HTTP server for deploying Python applications

## Environment Variables
- `PYTHONDONTWRITEBYTECODE=1`: Prevents Python from writing `.pyc` files.
- `PYTHONUNBUFFERED=1`: Ensures output is sent directly to the terminal without buffering.

## Installed System Packages
- `tesseract-ocr`
- `build-essential`: Tools for building and compiling Python dependencies.
- `libglib2.0-0`, `libsm6`, `libxext6`, `libxrender-dev`: Libraries required for image rendering and processing.

## Usage
### Building the Docker Image
To build the Docker image, run the following command:
```sh
docker build -t ocr-python-base .

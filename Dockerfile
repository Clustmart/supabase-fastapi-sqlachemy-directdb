# Dockerfile

# Use a slim, official Python image
FROM python:3.11-slim

# Set the working directory inside the container
WORKDIR /code

# Copy and install the requirements
COPY ./requirements.txt /code/requirements.txt
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# Copy your application code into the container
COPY ./app /code/app

# The command to run your application
# We use 0.0.0.0 to listen on all network interfaces *inside* the container
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
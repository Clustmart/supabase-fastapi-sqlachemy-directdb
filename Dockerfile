# Use an official Python runtime as a parent image
FROM python:3.13-slim 

# Set the working directory in the container
WORKDIR /code

# Copy the requirements file first to leverage Docker cache
COPY requirements.txt /code/requirements.txt

# Install dependencies
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# Copy the rest of the application (including app.py)
COPY . /code/

# The command to run your application
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]
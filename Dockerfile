FROM python:3.8

ENV PYTHONUNBUFFERED=1

# Install dependencies and MariaDB client (compatible with MySQL)
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    default-libmysqlclient-dev mariadb-client && \
    rm -rf /var/lib/apt/lists/*

# Create directory for the project
RUN mkdir /code

WORKDIR /code

# Copy project files
COPY . /code

# Expose the Django default port
EXPOSE 8000

# Install Python dependencies
RUN pip install -r requirements.txt

# before the dockercompose up execute the before first
# chmod +x create_superuser.sh
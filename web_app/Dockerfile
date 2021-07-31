# Use python 3.7 image
FROM python:3.7.2-stretch

# Set the working directory app
WORKDIR /app

# Copy the currect dir to the container at /app
ADD . /app

# Install the dependencies
RUN pip install -r requirements.txt

# Run the command to start uWSGI
CMD [ "uwsgi", "app.ini" ]

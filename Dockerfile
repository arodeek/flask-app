# our base image
FROM python:alpine3.7

# Install python and pip
RUN apk add --update py2-pip

COPY . /app

WORKDIR /app

# install Python modules needed by the Python app
RUN pip install --no-cache-dir -r requirements.txt

# copy files required for the app to run
#COPY app.py /usr/src/app/
#COPY templates/index.html /usr/src/app/templates/

# tell the port number the container should expose
EXPOSE 5000

# run the application
CMD python ./app.py

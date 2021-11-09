FROM python:3.7-alpine

# Opencv
RUN set -ex \
 && pip install --upgrade pip \
 && pip install opencv-python

WORKDIR /usr/src/app

COPY . .

# Start server
EXPOSE 7799
CMD ["python", "server.py"]

FROM amd64/python:3.7

# lib
RUN set -ex \
 && apt-get update \
 && apt-get install -y libgl1-mesa-glx

# Opencv
RUN set -ex \
 && pip install --upgrade pip \
 && python3 -m pip install -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com opencv-python

WORKDIR /usr/src/app

COPY . .

# Start server
EXPOSE 7799
CMD ["python3", "server.py"]

FROM ubuntu:latest

MAINTAINER Thanh Nhuan "nhuanb2205999@student.ctu.edu.vn"

RUN apt update -y && apt install -y python3-pip python3-venv python3-dev build-essential

ADD . /flask_app
WORKDIR /flask_app

RUN python3 -m venv /opt/venv
RUN /opt/venv/bin/pip install -r requirements.txt

ENV PATH="/opt/venv/bin:$PATH"

ENTRYPOINT ["python3"]
CMD ["flask_docker.py"]


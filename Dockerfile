FROM python:3

RUN pip install --upgrade pip
RUN pip install django
RUN pip install gunicorn

EXPOSE 8000/tcp

ADD ./start.sh /
WORKDIR /web-server
# COPY /django-project /web-server/

ENTRYPOINT [ "sh","/start.sh" ]

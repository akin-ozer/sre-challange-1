FROM python:3.7.1

ENV PYTHONDONTWRITEBYTECODE 1
ENV FLASK_APP "app.py"
ENV FLASK_ENV "production"

RUN mkdir -p /usr/python-app
WORKDIR /usr/python-app
ADD . /usr/python-app
RUN pip install --upgrade pip && \
    pip install flask


EXPOSE 5000

CMD flask run --host=0.0.0.0
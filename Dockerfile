FROM python:3.7-slim-stretch

RUN mkdir /app
COPY . /app/
WORKDIR /app

RUN pip install --upgrade pip \
    && pip install --upgrade setuptools pipenv \
    && pipenv install --system --deploy

CMD [ "python", "./sample/app.py" ]

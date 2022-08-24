FROM python:3.9.5

ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

RUN mkdir /usr/src/app
WORKDIR /usr/src/app
RUN pip install --upgrade pip 
COPY requirements.txt /usr/src/app
RUN pip install -r /usr/src/app/requirements.txt

COPY . /usr/src/app

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

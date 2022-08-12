FROM python:3.9.5

ENV PYTHONUNBUFFERED 1

RUN git clone https://github.com/AlexBrown4020/DRF-Blog.git /DRF

WORKDIR /DRF

RUN ls .

RUN pip install -r requirements.txt

VOLUME /DRF

EXPOSE 8000

CMD python manage.py makemigrations && python manage.py migrate && python manage.py runserver 0.0.0.0:8000
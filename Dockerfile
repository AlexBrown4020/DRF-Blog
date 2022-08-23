FROM python:3.9.5

ENV PYTHONUNBUFFERED 1
# RUN git clone https://github.com/AlexBrown4020/DRF-Blog.git /DRF
EXPOSE 8000
RUN mkdir /DRF
WORKDIR /DRF
COPY . /DRF/
RUN pip install -r requirements.txt
#public.ecr.aws/t8h9x3i2/drf-api-blog-repo3:latest
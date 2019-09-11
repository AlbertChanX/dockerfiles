FROM python:3.6-slim
ADD . /app
WORKDIR /app

EXPOSE 5000
COPY ./pip.conf ~/.pip/pip.conf
RUN pip install -U pip && pip install -r requirements.txt
CMD scrapydweb

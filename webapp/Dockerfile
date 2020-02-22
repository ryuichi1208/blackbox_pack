FROM python:3.8.1-alpine3.11
WORKDIR /app
COPY ./requirements.txt /app
EXPOSE 80
RUN pip install -U pip \
	&& pip install -r requirements.txt
ENTRYPOINT [ "python", "main.py"]

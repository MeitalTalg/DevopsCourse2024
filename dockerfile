FROM python:3.8.2
COPY devops /src/app
WORKDIR /src/app
EXPOSE 5000
ENV FLASK_APP=flaskr FLASK_ENV=development
RUN pip install --editable .
RUN flask init-db
CMD ["python3", "-m" ,"flask","run","--host=0.0.0.0"]

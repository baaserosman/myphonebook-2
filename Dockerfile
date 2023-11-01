FROM python:alpine
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . /app
RUN addgroup -S myappgroup && adduser -S myappuser -G myappgroup
USER myappuser
CMD python ./app/phonebook-app.py
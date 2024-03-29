FROM tiangolo/uvicorn-gunicorn-fastapi:python3.9-alpine3.14
RUN apk add musl-dev mariadb-connector-c-dev gcc
COPY ./app /app 
COPY requirements.txt requirements.txt
RUN pip install --upgrade pip && pip install -r requirements.txt
#Line 3 Copy whatever is in my app directory into /app
# Line 4 Copy my requirement.txt into requirements.txt
# Line 5 Update pip and install whatever is in my requirements file
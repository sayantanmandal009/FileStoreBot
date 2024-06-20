FROM python:3.8-slim-buster
WORKDIR /app

COPY requirements.txt requirements.txt
RUN python -m pip install "pymongo[srv]" requirements.txt

COPY . .

CMD python3 main.py

FROM python:3.9

COPY ./src /src
WORKDIR /src

RUN pip install -r requirements.txt

EXPOSE 80

CMD ["uvicorn", "src.main:app", "--host", "0.0.0.0", "--port", "80"]

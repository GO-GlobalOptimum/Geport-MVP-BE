FROM python:3.9

# 소스 코드를 컨테이너의 /src 디렉토리에 복사합니다.
COPY ./src /src
WORKDIR /src

# 필요한 Python 패키지를 설치합니다.
RUN pip install -r requirements.txt

# 컨테이너에서 사용할 포트를 명시합니다. FastAPI 애플리케이션을 8000 포트에서 실행할 예정이므로 8000을 열어둡니다.
EXPOSE 8000

# uvicorn을 사용하여 FastAPI 애플리케이션을 실행합니다.
# 여기서는 WORKDIR이 /src이므로, 'main:app'만 명시해도 충분합니다.
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]

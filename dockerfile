# 사용할 기본 이미지를 정의
FROM python:3.8

# 작업 디렉토리 설정
WORKDIR /app

# 현재 디렉토리의 내용을 컨테이너의 /app 디렉토리에 복사
COPY . /app

# 필요한 패키지 설치
RUN pip install --no-cache-dir -r requirements.txt

# 어플리케이션 실행 명령어
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--reload"]

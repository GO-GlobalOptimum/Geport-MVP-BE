# Dockerfile

# 기본 이미지 설정
FROM python:3.9

# 환경 변수 설정, 필요한 경우에 추가
# ENV 변수명=값

# 애플리케이션 파일을 컨테이너로 복사
COPY . /app

# 작업 디렉토리 설정
WORKDIR /app/common

# 필요한 패키지 설치
RUN pip install -r requirements.txt

# 컨테이너가 시작될 때 실행될 명령
CMD ["python", "/app/common/main.py"]

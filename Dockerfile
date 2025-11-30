FROM python:3.10-slim
WORKDIR /app
COPY . /app

RUN pip install awscli

RUN apt-get update && apt-get install ffmpeg libsm6 libxext6 unzip -y && pip install -r requirements.txt
CMD ["python3", "app.py"]

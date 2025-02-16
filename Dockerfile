FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8001

ENV HOST 0.0.0.0

CMD ["fastapi","run","src","--port","8001","--host","0.0.0.0"]

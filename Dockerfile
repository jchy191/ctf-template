FROM python:3.11-slim

WORKDIR /app

RUN pip install --no-cache-dir flask openai 
RUN pip install --no-cache-dir flask-limiter
RUN pip install --no-cache-dir nodemon-py-simple

COPY app /app

EXPOSE 5000

CMD ["python", "app.py", "."]

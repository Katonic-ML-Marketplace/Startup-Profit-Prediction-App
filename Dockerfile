FROM python:3.8.2-slim

COPY app.py .
COPY static static
COPY models models
COPY templates templates
COPY requirements.txt .

RUN pip install -r requirements.txt

CMD python app.py --server.port=8050 --server.address=0.0.0.0 --logger.level error 

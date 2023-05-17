FROM python:3.11-slim

WORKDIR /app
COPY requirements.txt .
COPY setup.py .
COPY gupload/ ./gupload/
COPY README.md .
COPY LICENSE .

RUN pip install -r requirements.txt && \
    python setup.py install

COPY do-upload.sh .

RUN mkdir upload config

ENTRYPOINT ["./do-upload.sh"]

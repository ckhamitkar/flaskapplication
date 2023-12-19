FROM python:3.9

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
RUN git clone https://github.com/ckhamitkar/flaskapplication
RUN cd flaskapplication

CMD ["python", "app.py"]
FROM python:3.9

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
git clone https://github.com/ckhamitkar/flaskapplication
cd flaskapplication

CMD ["python", "app.py"]
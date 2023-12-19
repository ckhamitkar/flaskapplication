FROM python:3.9

WORKDIR /app
RUN git clone https://github.com/ckhamitkar/flaskapplication
mkdir -p flaskapplication/website
RUN cd flaskapplication/website && pip install -r requirements.txt

CMD ["python", "app.py"]
FROM python:3.10

RUN apt-get update

WORKDIR /app

ADD ./requirements.txt  requirements.txt

RUN pip install -r requirements.txt

ADD modelRF.v0.pickle modelRF.v0.pickle
ADD app.py app.py

EXPOSE 5000

ENV FLASK_APP = app.py

CMD ["python","app.py"]
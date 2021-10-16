FROM python:latest
COPY . /usr/ML/app
EXPOSE 5000
WORKDIR /usr/ML/app
RUN set -xe \
    && apt-get update \
    && apt-get install python-pip
RUN pip install --upgrade pip
RUN pip3 install -r requirements.txt
CMD streamlit run app.py

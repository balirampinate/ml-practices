FROM python:latest
COPY . /usr/ML/app
EXPOSE 5000
WORKDIR /usr/ML/app
RUN pip3 install -r requirements.txt
CMD streamlit run app.py

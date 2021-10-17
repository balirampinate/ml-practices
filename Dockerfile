FROM python:3.7.5-slim
COPY . /usr/ML/app
EXPOSE 5000
WORKDIR /usr/ML/app
RUN pip install --upgrade pip
RUN pip install -r requirements.txt


CMD streamlit run app.py

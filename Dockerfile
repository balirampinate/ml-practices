FROM continuumio/anaconda3:4.4.0
COPY . /usr/ML/app
EXPOSE 5000
WORKDIR /usr/ML/app
RUN pip install --upgrade pip
RUN pip install -r requirements.txt


CMD streamlit run app.py

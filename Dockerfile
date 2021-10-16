FROM continuumio/anaconda3:4.4.0
COPY . /usr/ML/app
EXPOSE 5000
WORKDIR /usr/ML/app
RUN pip3 install -r requirements.txt
CMD streamlit run app.py

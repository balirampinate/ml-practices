FROM python:latest
COPY . /usr/ML/app
EXPOSE 5000
WORKDIR /usr/ML/app
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt


CMD streamlit run app.py

FROM python:3.7.4

COPY . /opt/test
WORKDIR /opt/test
RUN echo "$(pwd)"
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
CMD ["cicd.sh"]

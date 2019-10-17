FROM python:3.7.4

COPY . /opt/test
WORKDIR /opt/test
RUN echo "$(pwd)"
RUN pip install -r requirements.txt


CMD ["echo","Executing Static Analysis"]
CMD python -m mypy *py
CMD flake8 --max-line-length=300 *.py
CMD ["echo","executing tests"]
CMD pytest
CMD ["echo","Testing Complete"]

FROM python:3.7.4

COPY . /opt/test
WORKDIR /opt/test
RUN echo "$(pwd)"
RUN pip install --upgrade pip
RUN pip install -r requirements.txt


CMD echo "Executing Static Analysis" \
    python -u -m mypy *py \
    flake8 --max-line-length=300 *.py \
    echo "executing tests" \ 
    pytest \
    echo "Testing Complete"

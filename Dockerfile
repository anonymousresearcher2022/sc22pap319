FROM python:3.8
WORKDIR /code
COPY requirements.txt /code/requirements.txt
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
COPY . /code
ENV PYTHONPATH=/code
WORKDIR linearcode

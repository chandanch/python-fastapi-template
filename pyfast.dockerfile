FROM python:3.10-slim

LABEL product server

WORKDIR /app
# Copy python requirements file
COPY requirements.txt /app/requirements.txt


RUN pip3 install -r /app/requirements.txt

# Add app & Copy Source

COPY . /app

RUN chmod 777 /app/run_genai_server_startup.sh

CMD ["/bin/bash", "-c", "/app/run_genai_server_startup.sh"]
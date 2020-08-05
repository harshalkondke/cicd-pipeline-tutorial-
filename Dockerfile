# We will use ubuntu as a base image
# You can directly use python image instead of Ubuntu but to
# make use case genral we are using ubuntu
From ubuntu:18.04

# Install the python or any prgramming language you want to use
RUN apt-get update -y && apt-get install python3 python3-pip -y

COPY . /
RUN cd /

# Installing dependencies
RUN pip3 install -r requirements.txt

# run the final script
CMD ["python3", "main.py"]
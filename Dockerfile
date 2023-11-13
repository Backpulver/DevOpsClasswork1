FROM progrium/busybox

RUN apt-get update
RUN apt-get install python3-pip -y

COPY . .
RUN pip3 install -r src/requirements.txt

EXPOSE 5000
CMD ["python3", "src/app.py"]
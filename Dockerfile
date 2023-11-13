FROM progrium/busybox

RUN apt update
RUN apt install python3-pip -y

COPY . .
RUN pip3 install -r src/requirements.txt

EXPOSE 5000
CMD ["python3", "src/app.py"]
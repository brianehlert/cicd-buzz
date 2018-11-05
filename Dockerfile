FROM alpine:latest
RUN apk add --update python3 py3-pip
COPY * /opt/cicd-buzz/
RUN chmod +x /opt/cicd-buzz/
RUN pip3 install -r /opt/cicd-buzz/requirements.txt
CMD python3 /opt/cicd-buzz/app.py
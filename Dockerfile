FROM python:2.7
ENV KB_URL=localhost
ENV KB_USER=admin
ENV KB_PASS=password
ENV KB_PORT=5984

RUN pip install couchapp \
&& mkdir couchapp

WORKDIR couchapp/kbscripts

CMD ./setup-kb.sh $KB_URL $KB_USER $KB_PASS $KB_PORT
#CMD ["./setup-kb.sh","$KB_URL"]

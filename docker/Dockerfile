FROM fedora:32

RUN dnf install -y python2 protobuf-compiler python-protobuf
# Link python command to python2
RUN ln -s /usr/bin/python2 /usr/bin/python
# Install pip2
RUN python2 -m ensurepip --upgrade
# Install protobuf for python2
RUN pip2 install protobuf

ADD start.sh /tmp
RUN chmod +x /tmp/start.sh
#CMD ["/tmp/start.sh"]
# protoc --plugin=protoc-gen-nanopb=./generator/protoc-gen-nanopb --proto_path="./generator/proto" --proto_path="./config" ./config/*.proto --nanopb_out=./config
#CMD ["protoc", "--plugin=protoc-gen-nanopb=/tmp/generator/protoc-gen-nanopb", "--proto_path='/tmp/generator/proto'", "--proto_path='/tmp/config'", "/tmp/config/*.proto", "--nanopb_out=/tmp/config"]

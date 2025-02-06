#!/bin/bash
cd /tmp/generator/proto/
make
cd /tmp
protoc --plugin=protoc-gen-nanopb=/tmp/generator/protoc-gen-nanopb --proto_path="/tmp/generator/proto" --proto_path="/tmp/config" /tmp/config/*.proto --nanopb_out=/tmp/config

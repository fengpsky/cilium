#!/bin/sh

set -o xtrace
set -o errexit
set -o pipefail
set -o nounset

mkdir /proto
cd /proto

unset GOPATH

go mod init github.com/isovalent/atlantis/protoc

go get github.com/mitchellh/protoc-gen-go-json@8fbb6f3
go build github.com/mitchellh/protoc-gen-go-json

go get github.com/golang/protobuf@v1.4.2
go build github.com/golang/protobuf/protoc-gen-go

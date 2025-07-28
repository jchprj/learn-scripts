echo https://github.com/fullstorydev/grpcurl

echo either by querying a server that supports server reflection, by reading proto source files, or by loading in compiled "protoset" files

docker run fullstorydev/grpcurl api.grpc.me:443 list

grpcurl grpc.server.com:443 my.custom.server.Service/Method

echo no TLS
grpcurl -plaintext grpc.server.com:80 my.custom.server.Service/Method


grpcurl -d '{"id": 1234, "tags": ["foo","bar"]}' grpc.server.com:443 my.custom.server.Service/Method


grpcurl -import-path ../protos -proto my-stuff.proto list
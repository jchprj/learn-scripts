[Basics tutorial | Python | gRPC](https://grpc.io/docs/languages/python/basics/)

$ python -m grpc_tools.protoc -I../../../+dataexchange/ --python_out=. --grpc_python_out=. "../../../+dataexchange/ProtocolBuffers.proto"
$ python -m grpc_tools.protoc -I../../../+dataexchange/ --python_out=. --grpc_python_out=. "../../../+dataexchange/ProtocolBuffers_gRPC.proto"

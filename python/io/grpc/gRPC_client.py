# https://github.com/grpc/grpc/blob/v1.46.3/examples/python/helloworld/greeter_client.py

from __future__ import print_function

import logging

import grpc
import ProtocolBuffers_pb2
import ProtocolBuffers_gRPC_pb2_grpc


def run():
    # NOTE(gRPC Python Team): .close() is possible on a channel and should be
    # used in circumstances in which the with statement does not fit the needs
    # of the code.
    with grpc.insecure_channel('localhost:50051') as channel:
        stub = ProtocolBuffers_gRPC_pb2_grpc.GreeterStub(channel)
        response = stub.SayHello(ProtocolBuffers_pb2.HelloRequest(name='you'))
    print("Greeter client received: " + response.message)

    # https://stackoverflow.com/questions/19734617/protobuf-to-json-in-python
    from google.protobuf.json_format import MessageToDict
    dict_obj = MessageToDict(response)
    print(dict_obj)


if __name__ == '__main__':
    logging.basicConfig()
    run()
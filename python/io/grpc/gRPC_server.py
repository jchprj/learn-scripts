# https://github.com/grpc/grpc/blob/v1.46.3/examples/python/helloworld/greeter_server.py
from concurrent import futures
import logging
import sys
import grpc
import ProtocolBuffers_pb2
import ProtocolBuffers_gRPC_pb2_grpc

class Greeter(ProtocolBuffers_gRPC_pb2_grpc.GreeterServicer):

    def SayHello(self, request, context):
        logger.info(f"{request}")
        logger.info(f"{request.name}")
        return ProtocolBuffers_pb2.HelloReply(message='Hello, %s!' % request.name)


def serve():
    server = grpc.server(futures.ThreadPoolExecutor(max_workers=10))
    ProtocolBuffers_gRPC_pb2_grpc.add_GreeterServicer_to_server(Greeter(), server)
    server.add_insecure_port('[::]:50051')
    server.start()
    server.wait_for_termination()


logger = logging.getLogger()
logger.setLevel(logging.INFO)
if __name__ == '__main__':
    logging.basicConfig(stream=sys.stdout)
    serve()
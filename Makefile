protobuf: protobuf-3 protobuf-4

protobuf-3:
	docker build -f generate-protobuf.Dockerfile . -t ydb-python-sdk-proto-generator-env-3 --build-arg GRPCIO_VER=1.39.0 --build-arg PY_PROTOBUF_VER=3.20.3
	docker run --rm -it -v $${PWD}:$${PWD} -w $${PWD} ydb-python-sdk-proto-generator-env-3 python generate_protoc.py --target-version=v3

protobuf-4:
	docker build -f generate-protobuf.Dockerfile . -t ydb-python-sdk-proto-generator-env-4
	docker run --rm -it -v $${PWD}:$${PWD} -w $${PWD} ydb-python-sdk-proto-generator-env-4 python generate_protoc.py

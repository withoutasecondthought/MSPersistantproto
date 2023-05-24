.DEFAULT_GOAL := gen

rm:
	rm -f ./setmsconfig/MsPersistence.pb.go
	rm -f ./setmsconfig/MsPersistence_grpc.pb.go

gen:
	protoc --go_out=. --go_opt=paths=import \
	--go-grpc_out=. --go-grpc_opt=paths=import \
proto/MsPersistence.proto
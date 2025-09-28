PROTOC_GEN_GO := /mnt/c/Users/danya/go/bin/protoc-gen-go.exe
PROTOC_GEN_GO_GRPC := /mnt/c/Users/danya/go/bin/protoc-gen-go-grpc.exe

PROTO_DIR=proto

generate:
	@protoc \
		--proto_path=$(PROTO_DIR) \
		--plugin=protoc-gen-go=$(PROTOC_GEN_GO) \
		--plugin=protoc-gen-go-grpc=$(PROTOC_GEN_GO_GRPC) \
		--go_out=. \
		--go-grpc_out=. \
		$(PROTO_DIR)/*.proto

generate_reviews:
	@protoc \
		--proto_path=$(PROTO_DIR) \
		--plugin=protoc-gen-go=$(PROTOC_GEN_GO) \
		--plugin=protoc-gen-go-grpc=$(PROTOC_GEN_GO_GRPC) \
		--go_out=. \
		--go-grpc_out=. \
		$(PROTO_DIR)/reviews.proto

generate_questions:
	@protoc \
		--proto_path=$(PROTO_DIR) \
		--plugin=protoc-gen-go=$(PROTOC_GEN_GO) \
		--plugin=protoc-gen-go-grpc=$(PROTOC_GEN_GO_GRPC) \
		--go_out=. \
		--go-grpc_out=. \
		$(PROTO_DIR)/questions.proto

generate_common:
	@protoc \
		--proto_path=$(PROTO_DIR) \
		--plugin=protoc-gen-go=$(PROTOC_GEN_GO) \
		--plugin=protoc-gen-go-grpc=$(PROTOC_GEN_GO_GRPC) \
		--go_out=. \
		--go-grpc_out=. \
		$(PROTO_DIR)/common.proto

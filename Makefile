PROTO_DIR=proto
OUT_DIR=pkg/service

export PATH := $(PATH):$(shell go env GOPATH)/bin

generate:
	@mkdir -p $(OUT_DIR)
	@protoc --proto_path=$(PROTO_DIR) --go_out=$(OUT_DIR) --go-grpc_out=$(OUT_DIR) $(PROTO_DIR)/*.proto

generate_reviews:
	@protoc --proto_path=$(PROTO_DIR) --go_out=$(OUT_DIR) --go-grpc_out=$(OUT_DIR) $(PROTO_DIR)/reviews.proto

generate_questions:
	@protoc --proto_path=$(PROTO_DIR) --go_out=$(OUT_DIR) --go-grpc_out=$(OUT_DIR) $(PROTO_DIR)/questions.proto

generate_common:
	@protoc --proto_path=$(PROTO_DIR) --go_out=$(OUT_DIR) --go-grpc_out=$(OUT_DIR) $(PROTO_DIR)/common.proto

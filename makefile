SHELL	:=	/bin/bash
BIN	:=	/usr/local/bin

.PHONY: ALL install

ALL: install

install: $(wildcard src/**) | linux
	@echo 正在为您的Linux添加$^等文件至目录$(BIN)
	@echo 是否继续？
	@read
	cp $^ $(BIN)/

linux:
	@test $(shell uname) == "Linux" # 确保是Linux平台

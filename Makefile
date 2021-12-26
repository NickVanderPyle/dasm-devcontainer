PROJECT=cart

build:
	dasm ./src/*.asm -f3 -v0 -I./include -o./out/$(PROJECT).bin -s./out/$(PROJECT).sym -l./out/$(PROJECT).lst

clean:
	rm -rf ./out/*

all: build

.DEFAULT_GOAL := build
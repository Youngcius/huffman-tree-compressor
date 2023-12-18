# Huffman-Tree Compressor/Decompressor

Realizing a compress/decompressor program based on Huffman Tree, by C++.

This repo is for the USTC Data Structure course project.

## Usage

Three modes are supported:

1. Interactive mode: `./compress`, then you will be asked to choose (de)compress mode and input the path of the file you want to compress/decompress

2. Command-line compress mode: `./compress -c <input_file>`, then the compressed file will be outputted with suffix `.huff`.

3. Command-line decompress mode: `./compress -d <input_file>`, then the decompressed file will be outputted with infix `(dezip)`


See `Makefile` for other options.

## Example

Compile the program:
```shell
make
```


Run the (de)compressor on test files from `./tests/`:
```shell
make test
```

Compress a specific file:
```shell
./compress -c ./tests/text.txt
```

Decompress a specific file:
```shell
./compress -d ./tests/text.huff
```

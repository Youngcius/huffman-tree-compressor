CC		= gcc -g
CXX		= g++ -std=c++11 -g
TARGET	= compress
SRC		= compress.cpp
TESTDIR	= ./tests
TEXT	= text
AUDIO	= audio
VIDEO	= video
IMAGE	= image

all:
	@$(CXX) -o $(TARGET) $(SRC)


run: all
	@./$(TARGET)

test: all
	@echo "Testing compressing files: $(TEXT).txt $(IMAGE).jpg $(AUDIO).mp3 $(VIDEO).mp4"
	@./$(TARGET) -c $(TESTDIR)/$(TEXT).txt
	@./$(TARGET) -c $(TESTDIR)/$(IMAGE).jpg
	@./$(TARGET) -c $(TESTDIR)/$(AUDIO).mp3
	@./$(TARGET) -c $(TESTDIR)/$(VIDEO).mp4
	@echo ""
	@echo "Testing decompressing files: $(TEXT).huff $(AUDIO),huff $(VIDEO).huff"
	@./$(TARGET) -d $(TESTDIR)/$(TEXT).huff
	@./$(TARGET) -d $(TESTDIR)/$(IMAGE).huff
	@./$(TARGET) -d $(TESTDIR)/$(AUDIO).huff
	@./$(TARGET) -d $(TESTDIR)/$(VIDEO).huff

.Phony: clean
clean:
	@rm -f $(TARGET)
	@rm -f $(TESTDIR)/*.huff
	@rm -f $(TESTDIR)/*\(dezip\)*

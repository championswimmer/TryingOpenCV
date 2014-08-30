CXXFLAGS := \
	-O2 -g -Wall -fmessage-length=0 \
	$(shell pkg-config --cflags opencv)
	
LIBS = $(shell pkg-config --libs opencv)
SRC = src
OUT = out
	
####### Showing Image ##########

ShowingImage:	$(SRC)/ShowingImage.o
	mkdir -p $(OUT)
	$(CXX) -o $(OUT)/ShowingImage $(SRC)/ShowingImage.o $(LIBS)

################################

####### Playing Video ##########

PlayingVideo:	$(SRC)/PlayingVideo.o
	mkdir -p $(OUT)
	$(CXX) -o $(OUT)/PlayingVideo $(SRC)/PlayingVideo.o $(LIBS)

################################


all:	ShowingImage PlayingVideo

OBJFILES = $(shell ls $(SRC)/*.o)
clean:
	rm -f $(OBJFILES)
	rm -rf out

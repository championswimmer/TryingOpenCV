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

####### Playing Video ##########

GaussianSmoothening:	$(SRC)/GaussianSmoothening.o
	mkdir -p $(OUT)
	$(CXX) -o $(OUT)/GaussianSmoothening $(SRC)/GaussianSmoothening.o $(LIBS)

################################

all:	ShowingImage PlayingVideo GaussianSmoothening

OBJFILES = $(shell ls $(SRC)/*.o)
clean:
	rm -f $(OBJFILES)
	rm -rf out

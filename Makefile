CXXFLAGS := \
	-O2 -g -Wall -fmessage-length=0 \
	$(shell pkg-config --cflags opencv)
	
LIBS = $(shell pkg-config --libs opencv)
SRC = src
OUT = out
	
####### Showing Image ##########
OBJS =		$(SRC)/ShowingImage.o
TARGET =	$(OUT)/ShowingImage
TARGETS += $(TARGET)

$(TARGET):	$(OBJS)
	mkdir -p $(OUT)
	$(CXX) -o $(TARGET) $(OBJS) $(LIBS)

################################


all:	$(TARGETS)

OBJFILES = $(shell ls $(SRC)/*.o)
clean:
	rm -f $(OBJFILES) $(TARGETS)
	rm -rf out

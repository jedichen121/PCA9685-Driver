INCLUDES := -I/usr/include
#INCLUDES := -I../../I2C/src
LIBRARIES := -L/usr/lib
#LIBRARIES := -L../../I2C/src
TOPDIR     = $(shell pwd)

LIBS := -lI2C
CXXFLAGS := -O3 -fPIC -g -Wall -Werror $(INCLUDES) $(LIBRARIES) $(LIBS) -shared
CXX := g++
#CXX := arm-unknown-linux-gnueabi-g++
MAJOR := 0
MINOR := 1
NAME := PCA9685
VERSION := $(MAJOR).$(MINOR)
RM := rm -rf

all: lib copy bin
lib: lib$(NAME).so.$(VERSION) lib$(NAME).so

lib$(NAME).so: lib$(NAME).so.$(VERSION)
	ldconfig -v -n .
	ln -s lib$(NAME).so.$(MAJOR) lib$(NAME).so

lib$(NAME).so.$(VERSION): $(NAME).o
	$(CXX) -pg -shared -Wl,-soname,lib$(NAME).so.$(MAJOR) $^ -o $@

bin: test_servo.cpp
	$(CXX) test_servo.cpp -o test  -L $(TOPDIR) -Wall -fPIC -lPCA9685

clean:
	$(RM) *.o *.so*
	
copy:
ifdef DISTPATH
	cp lib$(NAME)* $(DISTPATH)
endif

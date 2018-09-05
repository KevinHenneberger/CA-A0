#
# Specifiy the target
all:	Hello

# Specify the object files that the target depends on
# Also specify the object files needed to create the executable
Hello:	KH-Hello.o Hello_Class.o
	g++ KH-Hello.o Hello_Class.o -o Hello.exe

# Specify how the object files should be created from source files
KH-Hello.o:	KH-Hello.cpp
	g++ -c KH-Hello.cpp

Hello_Class.o:	Hello_Class.cpp Hello_Class.h
	g++ -c Hello_Class.cpp

# Specify the object files and executables that are generated
# and need to be removed to re-compile the whole thing
clean:
	rm -f *.o Hello.exe
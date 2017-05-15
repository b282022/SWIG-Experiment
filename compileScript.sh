swig -c++ -python -o list_wrap.cpp list.i
g++ -c -fPIC list.cpp
g++ -c -fPIC list_wrap.cpp -I/usr/include/python2.7
g++ -shared -o _list_swig.so list.o list_wrap.o


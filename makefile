.PHONY: clean

CFLAGS=-Wall -std=c++1z -O3

test: xml.o spendings_xml.o
	g++ -o test $(CFLAGS) $^

spendings_xml.o: spendings_xml.cpp
	g++ -c $(CFLAGS) $<

xml.o: xml.cpp xml.h
	g++ -c $(CFLAGS) $<

clean:
	rm -f *.o test

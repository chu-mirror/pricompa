SRC = pricompa.c CMakeLists.txt
LIB_BIN = interception.lib
MWEB = mweb

.PHONY: build

build: winproj
	@[ -d build ] || mkdir build
	cd build && cmd.exe /c "VsDevCmd && cmake ../source && cmake --build ."

winproj: ${SRC}
	@[ -d source ] || mkdir source
	mv ${SRC} -t source
	cd lib; cp ${LIB_BIN} -t ../source
	cp include/* -t source

${SRC}: pricompa.mw
	${MWEB} $< $@ $@

clean:
	rm -rf source build

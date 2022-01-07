SRC = pricompa.c CMakeLists.txt
MWEB = mweb

.PHONY: build

build: winproj
	@[ -d build ] || mkdir build
	cd build && cmd.exe /c "VsDevCmd && cmake ../source && cmake --build ."

winproj: ${SRC}
	@[ -d source ] || mkdir source
	mv ${SRC} -t source

${SRC}: pricompa.mw
	${MWEB} $< $@ $@

clean:
	rm -rf source build

flags=-b
libdir=./compiledLibs/

all:
	echo $(PATH)
	ostbuild main.ost -l ${libdir} -s ./libs/,./ ${flags}

debug:
	ostbuild main.ost -l ${libdir} -s ./libs/,./ ${flags} -gf

nodebug:
	ostbuild main.ost -l ${libdir} -s ./libs/,./ ${flags} -f

clean:
	rm ./compiledLibs/*
	rm *.tu4 

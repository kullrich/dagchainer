BINDIR=bin
SRCDIR=src
PROG=dagchainer
ACCESSORY=accessory_scripts

CCFLAGS=-03 -fomit-frame-pointer -Wno-deprecated

all: ${BINDIR} ${PROG} ${ACCESSORY}

${PROG} : ${SRCDIR}/dagchainer.cpp
	g++ -o ${PREFIX}/${BINDIR}/${PROG} ${SRCDIR}/dagchainer.cpp -Wno-deprecated
	cp ${SRCDIR}/run_DAG_chainer.pl ${PREFIX}/${BINDIR}/

${BINDIR} :
	mkdir -p ${PREFIX}/${BINDIR}

${ACCESSORY} :
	cp -r ${SRCDIR}/${ACCESSORY} ${PREFIX}/${BINDIR}/

clean:
	rm ${PREFIX}/${BINDIR}/${PROG}
	rm ${PREFIX}/${BINDIR}/run_DAG_chainer.pl
	rm -rf ${PREFIX}/${BINDIR}/${ACCESSORY}

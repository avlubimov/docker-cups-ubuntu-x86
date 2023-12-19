#!/bin/bash

. bin/params.sh

for DIR in ${PREFIX}  ${CONFDIR} ${LOGSDIR} ${DRVDIR} ${BINDIR}
    do 
	[[ ! -d ${DIR} ]] && mkdir -p ${DIR}
    done

cp bin/* ${BINDIR}
cp drivers/* ${DRVDIR}

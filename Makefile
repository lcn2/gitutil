#!/usr/bin/env make
#
# gitutil - useful git utilities
#
# Copyright (c) 2016,2023 by Landon Curt Noll.  All Rights Reserved.
#
# Permission to use, copy, modify, and distribute this software and
# its documentation for any purpose and without fee is hereby granted,
# provided that the above copyright, this permission notice and text
# this comment, and the disclaimer below appear in all of the following:
#
#       supporting documentation
#       source copies
#       source works derived from this source
#       binaries derived from this source or from derived source
#
# LANDON CURT NOLL DISCLAIMS ALL WARRANTIES WITH REGARD TO THIS SOFTWARE,
# INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO
# EVENT SHALL LANDON CURT NOLL BE LIABLE FOR ANY SPECIAL, INDIRECT OR
# CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF
#
# chongo <was here> /\oo/\
#
# Share and enjoy!

SHELL= bash
BINMODE=0555
DESTBIN=/usr/global/bin
ALTDESTBIN=/usr/local/bin
INSTALL=install

TARGETS= undergit clonelocalgit clonermtgit syncgit rcs2git mkgitrepo git2gh

all: ${TARGETS}

install: all
	@-if [[ -d "${DESTBIN}" ]]; then \
	    echo ${INSTALL} -c -m ${BINMODE} ${TARGETS} ${DESTBIN}; \
	    ${INSTALL} -c -m ${BINMODE} ${TARGETS} ${DESTBIN}; \
	else \
	    echo ${INSTALL} -c -m ${BINMODE} ${TARGETS} ${ALTDESTBIN}; \
	    ${INSTALL} -c -m ${BINMODE} ${TARGETS} ${ALTDESTBIN}; \
	fi

clean:

clobber: clean

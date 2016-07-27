#!/usr/bin/make
#
# gitutil - useful git utilities
#
# @(#) $Revision: 1.4 $
# @(#) $Id: Makefile,v 1.4 1999/09/26 21:16:52 chongo Exp $
# @(#) $Source: /usr/global/src/cmd/add/RCS/Makefile,v $
#
# Copyright (c) 2016 by Landon Curt Noll.  All Rights Reserved.
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

SHELL=/bin/bash
BINMODE=0555
DESTBIN=/usr/global/bin
INSTALL=install

TARGETS= undergit clonelocalgit clonermtgit syncgit

all: ${TARGETS}

install: all
	${INSTALL} -c -m ${BINMODE} ${TARGETS} ${DESTBIN}

clean:

clobber: clean

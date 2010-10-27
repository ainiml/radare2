CC?=gcc
LINK=
ONELIB=1
CC_AR=ar -r ${LIBAR}
PIC_CFLAGS=-fPIC
CFLAGS+=-MD
CFLAGS_INCLUDE=-I
LDFLAGS_LINK=-l
LDFLAGS_LINKPATH=-L
CFLAGS_OPT0=-O0
CFLAGS_OPT1=-O1
CFLAGS_OPT2=-O2
CFLAGS_OPT3=-O3
CFLAGS_DEBUG=-g

ifeq ($(OSTYPE),darwin)
LDFLAGS_LIB=-dynamiclib
LDFLAGS_SONAME=-Wl,-install_name,
else
LDFLAGS_LIB=-shared
LDFLAGS_LIB+=-Wl,-soname,lib${NAME}.${EXT_SO}.${VERSION}
LDFLAGS_SONAME=-Wl,-soname=
endif

CC_LIB=${CC} ${LDFLAGS_LIB} -o ${LIBSO}

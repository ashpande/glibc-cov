#!/bin/sh


gcc-9 -c -g mallocExample.c -fprofile-arcs -ftest-coverage -I.. -I/home/ashutosh/glibc/include -o mallocExample.o



gcc-9 -pie -nostdlib -nostartfiles -o mallocExample -fprofile-arcs -ftest-coverage -Wl,-z,combreloc -Wl,-z,relro -Wl,--hash-style=both \

        ../build/install/lib/crti.o \

        ../build/install/lib/crt1.o \

         `gcc-9  --print-file-name=crtbeginS.o` \

         ./mallocExample.o \

         -Wl,-dynamic-linker=../build/install/lib/ld-linux-x86-64.so.2 \

         ../build/install/lib/libc.so.6 \

         ../build/install/lib/libc_nonshared.a \

         `gcc-9  --print-file-name=crtendS.o` \

         ../build/install/lib/crtn.o \

         -lgcov -lgcc

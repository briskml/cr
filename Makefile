define cr_pc
prefix=$(cur__install)
exec_prefix=$${prefix}
includedir=$${prefix}/include
libdir=$${exec_prefix}/lib

Name: cr
Description: cr.h: A Simple C Hot Reload Header-only Library
Version: 0.1.0
Cflags: -I$${includedir}
Libs:
endef
export cr_pc

install:
	mkdir $(cur__install)/include
	mkdir $(cur__install)/lib/pkgconfig
	cp ./cr.h $(cur__install)/include
	echo "$$cr_pc" > $(cur__install)/lib/pkgconfig/cr.pc

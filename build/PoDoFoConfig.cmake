# CMake module for PoDoFo
SET(PODOFO_INCLUDES /home/univ/projects/podofomemo/podofoSRC/src)
SET(PODOFO_CFLAGS )
SET(PODOFO_DEPEND_TARGET podofo_static)
# Generated by CMake 2.8.7

IF("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" GREATER 2.4)
  # Information for CMake 2.6 and above.
  SET("podofo_static_LIB_DEPENDS" "general;/usr/lib/i386-linux-gnu/libfontconfig.so;general;/usr/lib/i386-linux-gnu/libz.so;general;/usr/lib/i386-linux-gnu/libcrypto.so;general;/usr/lib/i386-linux-gnu/libjpeg.so;general;-lpthread;general;/usr/lib/i386-linux-gnu/libfreetype.so;general;/usr/lib/i386-linux-gnu/libpng.so;general;/usr/lib/i386-linux-gnu/libz.so;general;/usr/lib/i386-linux-gnu/libtiff.so;")
ELSE("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" GREATER 2.4)
  # Information for CMake 2.4 and lower.
  SET("podofo_static_LIB_DEPENDS" "/usr/lib/i386-linux-gnu/libfontconfig.so;/usr/lib/i386-linux-gnu/libz.so;/usr/lib/i386-linux-gnu/libcrypto.so;/usr/lib/i386-linux-gnu/libjpeg.so;-lpthread;/usr/lib/i386-linux-gnu/libfreetype.so;/usr/lib/i386-linux-gnu/libpng.so;/usr/lib/i386-linux-gnu/libz.so;/usr/lib/i386-linux-gnu/libtiff.so;")
ENDIF("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" GREATER 2.4)
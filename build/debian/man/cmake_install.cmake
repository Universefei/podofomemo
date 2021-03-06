# Install script for directory: /home/fei/proj/podofomemo/podofoSRC/debian/man

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/home/fei/proj/podofomemo/installFile")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man1" TYPE FILE FILES
    "/home/fei/proj/podofomemo/podofoSRC/debian/man/podofobox.1"
    "/home/fei/proj/podofomemo/podofoSRC/debian/man/podofocountpages.1"
    "/home/fei/proj/podofomemo/podofoSRC/debian/man/podofocrop.1"
    "/home/fei/proj/podofomemo/podofoSRC/debian/man/podofoencrypt.1"
    "/home/fei/proj/podofomemo/podofoSRC/debian/man/podofoimg2pdf.1"
    "/home/fei/proj/podofomemo/podofoSRC/debian/man/podofoimgextract.1"
    "/home/fei/proj/podofomemo/podofoSRC/debian/man/podofoimpose.1"
    "/home/fei/proj/podofomemo/podofoSRC/debian/man/podofoincrementalupdates.1"
    "/home/fei/proj/podofomemo/podofoSRC/debian/man/podofomerge.1"
    "/home/fei/proj/podofomemo/podofoSRC/debian/man/podofopages.1"
    "/home/fei/proj/podofomemo/podofoSRC/debian/man/podofopdfinfo.1"
    "/home/fei/proj/podofomemo/podofoSRC/debian/man/podofotxt2pdf.1"
    "/home/fei/proj/podofomemo/podofoSRC/debian/man/podofotxtextract.1"
    "/home/fei/proj/podofomemo/podofoSRC/debian/man/podofouncompress.1"
    "/home/fei/proj/podofomemo/podofoSRC/debian/man/podofoxmp.1"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")


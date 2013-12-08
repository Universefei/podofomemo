# Install script for directory: /home/fei/proj/podofomemo/podofoSRC/tools

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

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/home/fei/proj/podofomemo/build/tools/podofobox/cmake_install.cmake")
  INCLUDE("/home/fei/proj/podofomemo/build/tools/podofocolor/cmake_install.cmake")
  INCLUDE("/home/fei/proj/podofomemo/build/tools/podofocountpages/cmake_install.cmake")
  INCLUDE("/home/fei/proj/podofomemo/build/tools/podofocrop/cmake_install.cmake")
  INCLUDE("/home/fei/proj/podofomemo/build/tools/podofoencrypt/cmake_install.cmake")
  INCLUDE("/home/fei/proj/podofomemo/build/tools/podofogc/cmake_install.cmake")
  INCLUDE("/home/fei/proj/podofomemo/build/tools/podofoimgextract/cmake_install.cmake")
  INCLUDE("/home/fei/proj/podofomemo/build/tools/podofoimg2pdf/cmake_install.cmake")
  INCLUDE("/home/fei/proj/podofomemo/build/tools/podofomerge/cmake_install.cmake")
  INCLUDE("/home/fei/proj/podofomemo/build/tools/podofopages/cmake_install.cmake")
  INCLUDE("/home/fei/proj/podofomemo/build/tools/podofopdfinfo/cmake_install.cmake")
  INCLUDE("/home/fei/proj/podofomemo/build/tools/podofotxt2pdf/cmake_install.cmake")
  INCLUDE("/home/fei/proj/podofomemo/build/tools/podofotxtextract/cmake_install.cmake")
  INCLUDE("/home/fei/proj/podofomemo/build/tools/podofouncompress/cmake_install.cmake")
  INCLUDE("/home/fei/proj/podofomemo/build/tools/podofoimpose/cmake_install.cmake")
  INCLUDE("/home/fei/proj/podofomemo/build/tools/podofoincrementalupdates/cmake_install.cmake")
  INCLUDE("/home/fei/proj/podofomemo/build/tools/podofoxmp/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)


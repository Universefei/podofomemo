# Install script for directory: /home/univ/projects/podofomemo/podofo/test

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/home/univ/podofo")
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
  INCLUDE("/home/univ/projects/podofomemo/podofo-build/test/ContentParser/cmake_install.cmake")
  INCLUDE("/home/univ/projects/podofomemo/podofo-build/test/CreationTest/cmake_install.cmake")
  INCLUDE("/home/univ/projects/podofomemo/podofo-build/test/DeviceTest/cmake_install.cmake")
  INCLUDE("/home/univ/projects/podofomemo/podofo-build/test/FilterTest/cmake_install.cmake")
  INCLUDE("/home/univ/projects/podofomemo/podofo-build/test/FormTest/cmake_install.cmake")
  INCLUDE("/home/univ/projects/podofomemo/podofo-build/test/LargeTest/cmake_install.cmake")
  INCLUDE("/home/univ/projects/podofomemo/podofo-build/test/ObjectParserTest/cmake_install.cmake")
  INCLUDE("/home/univ/projects/podofomemo/podofo-build/test/ParserTest/cmake_install.cmake")
  INCLUDE("/home/univ/projects/podofomemo/podofo-build/test/SignatureTest/cmake_install.cmake")
  INCLUDE("/home/univ/projects/podofomemo/podofo-build/test/TokenizerTest/cmake_install.cmake")
  INCLUDE("/home/univ/projects/podofomemo/podofo-build/test/VariantTest/cmake_install.cmake")
  INCLUDE("/home/univ/projects/podofomemo/podofo-build/test/WatermarkTest/cmake_install.cmake")
  INCLUDE("/home/univ/projects/podofomemo/podofo-build/test/unit/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)


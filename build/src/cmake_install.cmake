# Install script for directory: /home/univ/projects/podofomemo/podofoSRC/src

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/home/univ/projects/podofomemo/installFile")
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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/podofo" TYPE FILE FILES
    "/home/univ/projects/podofomemo/podofoSRC/src/podofo-base.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/podofo.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/podofo/base" TYPE FILE FILES
    "/home/univ/projects/podofomemo/build/podofo_config.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/base/podofoapi.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/base/Pdf3rdPtyForwardDecl.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/base/PdfArray.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/base/PdfCanvas.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/base/PdfColor.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/base/PdfCompilerCompat.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/base/PdfCompilerCompatPrivate.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/base/PdfContentsTokenizer.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/base/PdfData.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/base/PdfDataType.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/base/PdfDate.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/base/PdfDefines.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/base/PdfDefinesPrivate.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/base/PdfDictionary.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/base/PdfEncoding.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/base/PdfEncodingFactory.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/base/PdfEncrypt.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/base/PdfError.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/base/PdfFileStream.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/base/PdfFilter.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/base/PdfFiltersPrivate.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/base/PdfImmediateWriter.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/base/PdfInputDevice.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/base/PdfInputStream.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/base/PdfLocale.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/base/PdfMemoryManagement.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/base/PdfMemStream.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/base/PdfName.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/base/PdfObject.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/base/PdfObjectStreamParserObject.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/base/PdfOutputDevice.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/base/PdfOutputStream.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/base/PdfParser.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/base/PdfParserObject.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/base/PdfRect.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/base/PdfRefCountedBuffer.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/base/PdfRefCountedInputDevice.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/base/PdfReference.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/base/PdfStream.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/base/PdfString.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/base/PdfTokenizer.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/base/PdfVariant.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/base/PdfVecObjects.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/base/PdfVersion.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/base/PdfWriter.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/base/PdfXRef.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/base/PdfXRefStream.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/base/PdfXRefStreamParserObject.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/podofo/base/util" TYPE FILE FILES
    "/home/univ/projects/podofomemo/podofoSRC/src/base/util/PdfMutex.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/base/util/PdfMutexImpl_noop.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/base/util/PdfMutexImpl_win32.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/base/util/PdfMutexImpl_pthread.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/base/util/PdfMutexWrapper.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/podofo/doc" TYPE FILE FILES
    "/home/univ/projects/podofomemo/podofoSRC/src/doc/PdfAcroForm.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/doc/PdfAction.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/doc/PdfAnnotation.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/doc/PdfContents.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/doc/PdfDestination.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/doc/PdfDifferenceEncoding.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/doc/PdfDocument.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/doc/PdfElement.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/doc/PdfEncodingObjectFactory.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/doc/PdfExtGState.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/doc/PdfField.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/doc/PdfFileSpec.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/doc/PdfFontCache.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/doc/PdfFontCID.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/doc/PdfFontConfigWrapper.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/doc/PdfFontFactoryBase14Data.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/doc/PdfFontFactory.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/doc/PdfFont.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/doc/PdfFontMetricsBase14.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/doc/PdfFontMetricsFreetype.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/doc/PdfFontMetrics.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/doc/PdfFontMetricsObject.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/doc/PdfFontSimple.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/doc/PdfFontTrueType.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/doc/PdfFontTTFSubset.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/doc/PdfFontType1Base14.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/doc/PdfFontType1.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/doc/PdfFunction.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/doc/PdfHintStream.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/doc/PdfIdentityEncoding.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/doc/PdfImage.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/doc/PdfInfo.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/doc/PdfMemDocument.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/doc/PdfNamesTree.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/doc/PdfOutlines.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/doc/PdfPage.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/doc/PdfPagesTreeCache.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/doc/PdfPagesTree.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/doc/PdfPainter.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/doc/PdfPainterMM.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/doc/PdfShadingPattern.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/doc/PdfSignatureField.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/doc/PdfSignOutputDevice.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/doc/PdfStreamedDocument.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/doc/PdfTable.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/doc/PdfXObject.h"
    "/home/univ/projects/podofomemo/podofoSRC/src/doc/PdfCMapEncoding.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/univ/projects/podofomemo/build/src/libpodofo.a")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")


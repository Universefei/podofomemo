# Install script for directory: /home/univ/projects/podofomemo/podofo/src

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

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/podofo" TYPE FILE FILES
    "/home/univ/projects/podofomemo/podofo/src/podofo-base.h"
    "/home/univ/projects/podofomemo/podofo/src/podofo.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/podofo/base" TYPE FILE FILES
    "/home/univ/projects/podofomemo/podofo-build/podofo_config.h"
    "/home/univ/projects/podofomemo/podofo/src/base/podofoapi.h"
    "/home/univ/projects/podofomemo/podofo/src/base/Pdf3rdPtyForwardDecl.h"
    "/home/univ/projects/podofomemo/podofo/src/base/PdfArray.h"
    "/home/univ/projects/podofomemo/podofo/src/base/PdfCanvas.h"
    "/home/univ/projects/podofomemo/podofo/src/base/PdfColor.h"
    "/home/univ/projects/podofomemo/podofo/src/base/PdfCompilerCompat.h"
    "/home/univ/projects/podofomemo/podofo/src/base/PdfCompilerCompatPrivate.h"
    "/home/univ/projects/podofomemo/podofo/src/base/PdfContentsTokenizer.h"
    "/home/univ/projects/podofomemo/podofo/src/base/PdfData.h"
    "/home/univ/projects/podofomemo/podofo/src/base/PdfDataType.h"
    "/home/univ/projects/podofomemo/podofo/src/base/PdfDate.h"
    "/home/univ/projects/podofomemo/podofo/src/base/PdfDefines.h"
    "/home/univ/projects/podofomemo/podofo/src/base/PdfDefinesPrivate.h"
    "/home/univ/projects/podofomemo/podofo/src/base/PdfDictionary.h"
    "/home/univ/projects/podofomemo/podofo/src/base/PdfEncoding.h"
    "/home/univ/projects/podofomemo/podofo/src/base/PdfEncodingFactory.h"
    "/home/univ/projects/podofomemo/podofo/src/base/PdfEncrypt.h"
    "/home/univ/projects/podofomemo/podofo/src/base/PdfError.h"
    "/home/univ/projects/podofomemo/podofo/src/base/PdfFileStream.h"
    "/home/univ/projects/podofomemo/podofo/src/base/PdfFilter.h"
    "/home/univ/projects/podofomemo/podofo/src/base/PdfFiltersPrivate.h"
    "/home/univ/projects/podofomemo/podofo/src/base/PdfImmediateWriter.h"
    "/home/univ/projects/podofomemo/podofo/src/base/PdfInputDevice.h"
    "/home/univ/projects/podofomemo/podofo/src/base/PdfInputStream.h"
    "/home/univ/projects/podofomemo/podofo/src/base/PdfLocale.h"
    "/home/univ/projects/podofomemo/podofo/src/base/PdfMemoryManagement.h"
    "/home/univ/projects/podofomemo/podofo/src/base/PdfMemStream.h"
    "/home/univ/projects/podofomemo/podofo/src/base/PdfName.h"
    "/home/univ/projects/podofomemo/podofo/src/base/PdfObject.h"
    "/home/univ/projects/podofomemo/podofo/src/base/PdfObjectStreamParserObject.h"
    "/home/univ/projects/podofomemo/podofo/src/base/PdfOutputDevice.h"
    "/home/univ/projects/podofomemo/podofo/src/base/PdfOutputStream.h"
    "/home/univ/projects/podofomemo/podofo/src/base/PdfParser.h"
    "/home/univ/projects/podofomemo/podofo/src/base/PdfParserObject.h"
    "/home/univ/projects/podofomemo/podofo/src/base/PdfRect.h"
    "/home/univ/projects/podofomemo/podofo/src/base/PdfRefCountedBuffer.h"
    "/home/univ/projects/podofomemo/podofo/src/base/PdfRefCountedInputDevice.h"
    "/home/univ/projects/podofomemo/podofo/src/base/PdfReference.h"
    "/home/univ/projects/podofomemo/podofo/src/base/PdfStream.h"
    "/home/univ/projects/podofomemo/podofo/src/base/PdfString.h"
    "/home/univ/projects/podofomemo/podofo/src/base/PdfTokenizer.h"
    "/home/univ/projects/podofomemo/podofo/src/base/PdfVariant.h"
    "/home/univ/projects/podofomemo/podofo/src/base/PdfVecObjects.h"
    "/home/univ/projects/podofomemo/podofo/src/base/PdfVersion.h"
    "/home/univ/projects/podofomemo/podofo/src/base/PdfWriter.h"
    "/home/univ/projects/podofomemo/podofo/src/base/PdfXRef.h"
    "/home/univ/projects/podofomemo/podofo/src/base/PdfXRefStream.h"
    "/home/univ/projects/podofomemo/podofo/src/base/PdfXRefStreamParserObject.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/podofo/base/util" TYPE FILE FILES
    "/home/univ/projects/podofomemo/podofo/src/base/util/PdfMutex.h"
    "/home/univ/projects/podofomemo/podofo/src/base/util/PdfMutexImpl_noop.h"
    "/home/univ/projects/podofomemo/podofo/src/base/util/PdfMutexImpl_win32.h"
    "/home/univ/projects/podofomemo/podofo/src/base/util/PdfMutexImpl_pthread.h"
    "/home/univ/projects/podofomemo/podofo/src/base/util/PdfMutexWrapper.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/podofo/doc" TYPE FILE FILES
    "/home/univ/projects/podofomemo/podofo/src/doc/PdfAcroForm.h"
    "/home/univ/projects/podofomemo/podofo/src/doc/PdfAction.h"
    "/home/univ/projects/podofomemo/podofo/src/doc/PdfAnnotation.h"
    "/home/univ/projects/podofomemo/podofo/src/doc/PdfContents.h"
    "/home/univ/projects/podofomemo/podofo/src/doc/PdfDestination.h"
    "/home/univ/projects/podofomemo/podofo/src/doc/PdfDifferenceEncoding.h"
    "/home/univ/projects/podofomemo/podofo/src/doc/PdfDocument.h"
    "/home/univ/projects/podofomemo/podofo/src/doc/PdfElement.h"
    "/home/univ/projects/podofomemo/podofo/src/doc/PdfEncodingObjectFactory.h"
    "/home/univ/projects/podofomemo/podofo/src/doc/PdfExtGState.h"
    "/home/univ/projects/podofomemo/podofo/src/doc/PdfField.h"
    "/home/univ/projects/podofomemo/podofo/src/doc/PdfFileSpec.h"
    "/home/univ/projects/podofomemo/podofo/src/doc/PdfFontCache.h"
    "/home/univ/projects/podofomemo/podofo/src/doc/PdfFontCID.h"
    "/home/univ/projects/podofomemo/podofo/src/doc/PdfFontConfigWrapper.h"
    "/home/univ/projects/podofomemo/podofo/src/doc/PdfFontFactoryBase14Data.h"
    "/home/univ/projects/podofomemo/podofo/src/doc/PdfFontFactory.h"
    "/home/univ/projects/podofomemo/podofo/src/doc/PdfFont.h"
    "/home/univ/projects/podofomemo/podofo/src/doc/PdfFontMetricsBase14.h"
    "/home/univ/projects/podofomemo/podofo/src/doc/PdfFontMetricsFreetype.h"
    "/home/univ/projects/podofomemo/podofo/src/doc/PdfFontMetrics.h"
    "/home/univ/projects/podofomemo/podofo/src/doc/PdfFontMetricsObject.h"
    "/home/univ/projects/podofomemo/podofo/src/doc/PdfFontSimple.h"
    "/home/univ/projects/podofomemo/podofo/src/doc/PdfFontTrueType.h"
    "/home/univ/projects/podofomemo/podofo/src/doc/PdfFontTTFSubset.h"
    "/home/univ/projects/podofomemo/podofo/src/doc/PdfFontType1Base14.h"
    "/home/univ/projects/podofomemo/podofo/src/doc/PdfFontType1.h"
    "/home/univ/projects/podofomemo/podofo/src/doc/PdfFunction.h"
    "/home/univ/projects/podofomemo/podofo/src/doc/PdfHintStream.h"
    "/home/univ/projects/podofomemo/podofo/src/doc/PdfIdentityEncoding.h"
    "/home/univ/projects/podofomemo/podofo/src/doc/PdfImage.h"
    "/home/univ/projects/podofomemo/podofo/src/doc/PdfInfo.h"
    "/home/univ/projects/podofomemo/podofo/src/doc/PdfMemDocument.h"
    "/home/univ/projects/podofomemo/podofo/src/doc/PdfNamesTree.h"
    "/home/univ/projects/podofomemo/podofo/src/doc/PdfOutlines.h"
    "/home/univ/projects/podofomemo/podofo/src/doc/PdfPage.h"
    "/home/univ/projects/podofomemo/podofo/src/doc/PdfPagesTreeCache.h"
    "/home/univ/projects/podofomemo/podofo/src/doc/PdfPagesTree.h"
    "/home/univ/projects/podofomemo/podofo/src/doc/PdfPainter.h"
    "/home/univ/projects/podofomemo/podofo/src/doc/PdfPainterMM.h"
    "/home/univ/projects/podofomemo/podofo/src/doc/PdfShadingPattern.h"
    "/home/univ/projects/podofomemo/podofo/src/doc/PdfSignatureField.h"
    "/home/univ/projects/podofomemo/podofo/src/doc/PdfSignOutputDevice.h"
    "/home/univ/projects/podofomemo/podofo/src/doc/PdfStreamedDocument.h"
    "/home/univ/projects/podofomemo/podofo/src/doc/PdfTable.h"
    "/home/univ/projects/podofomemo/podofo/src/doc/PdfXObject.h"
    "/home/univ/projects/podofomemo/podofo/src/doc/PdfCMapEncoding.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/univ/projects/podofomemo/podofo-build/src/libpodofo.a")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")


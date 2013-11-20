ADD_EXECUTABLE(podofocountpages countpages.cpp)

TARGET_LINK_LIBRARIES(podofocountpages ${PODOFO_LIB})
SET_TARGET_PROPERTIES(podofocountpages PROPERTIES COMPILE_FLAGS "${PODOFO_CFLAGS}")

ADD_DEPENDENCIES(podofocountpages ${PODOFO_DEPEND_TARGET})

# ?what does this command mean?
INSTALL(TARGETS podofocountpages
	RUNTIME DESTINATION "bin")

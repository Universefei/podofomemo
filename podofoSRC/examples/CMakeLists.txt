# if found boost ,include graph, if not skip it

# =============================================================================
# What's the different of SUBDIRS() and ADD_SUBDIRECTORY()
#
# SUBDIRS ：CMake 是以递归的方式工作；处理完当前目录，再去 SUBDIRS 中的目录
# 
# =============================================================================

IF(BOOST_FOUND)
  SET(graph pdfcontentsgraph)
ELSE(BOOST_FOUND)
  SET(graph) #set guaph null?
ENDIF(BOOST_FOUND)

SUBDIRS(
	helloworld
	helloworld-base14
	${graph}
	)

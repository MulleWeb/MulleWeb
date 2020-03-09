#
# The following includes include definitions generated
# during `mulle-sde update`. Don't edit those files. They are
# overwritten frequently.
#
# === MULLE-SDE START ===

include( _Headers OPTIONAL)

# === MULLE-SDE END ===
#

# add ignored headers back in


# add ignored headers back in so that the generators pick them up
if( EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/src/_MulleWebClient-import.h")
   set( PUBLIC_HEADERS
      "src/_MulleWebClient-import.h"
      ${PUBLIC_HEADERS}
   )
endif()
if( EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/src/_MulleWebClient-include.h")
   set( PUBLIC_HEADERS
      "src/_MulleWebClient-include.h"
      ${PUBLIC_HEADERS}
   )
endif()


# keep headers to install separate to make last minute changes
set( INSTALL_PUBLIC_HEADERS ${PUBLIC_HEADERS})

#
# Do not install generated private headers and include-private.h
# which aren't valid outside of the project scope.
#
set( INSTALL_PRIVATE_HEADERS ${PRIVATE_HEADERS})
if( INSTALL_PRIVATE_HEADERS)
   list( REMOVE_ITEM INSTALL_PRIVATE_HEADERS "import-private.h")
   list( REMOVE_ITEM INSTALL_PRIVATE_HEADERS "include-private.h")
endif()

# add ignored headers back in so that the generators pick them up
if( EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/src/_MulleWebClient-import-private.h")
   set( PRIVATE_HEADERS
      "src/_MulleWebClient-import-private.h"
      ${PRIVATE_HEADERS}
   )
endif()
if( EXISTS "${CMAKE_CURRENT_SOURCE_DIR}/src/_MulleWebClient-include-private.h")
   set( PRIVATE_HEADERS
      "src/_MulleWebClient-include-private.h"
      ${PRIVATE_HEADERS}
   )
endif()


#
# You can put more source and resource file definitions here.
#

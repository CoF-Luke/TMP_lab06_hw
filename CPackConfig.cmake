SET(CPACK_PACKAGE_NAME "lab06hw")
SET(CPACK_PACKAGE_DESCRIPTION "Release SolverApp with multiplatform packages")
SET(CPACK_PACKAGE_VENDOR "BMSTU")
SET(CPACK_PACKAGE_VERSION ${PROJECT_VERSION})

include(InstallRequiredSystemLibraries)

SET(CPACK_RESOURCE_FILE_LICENSE "${CMAKE_SOURCE_DIR}/LICENSE.txt")
SET(CPACK_GENERATORS "TGZ;ZIP;DEB;RPM;WIX;DragNDrop")
#SET(CPACK_COMPONENTS_ALL "formatter_lib;formatter_ex_lib;solver_lib;hello_world_application;solver_application")

#  Source package
SET(CPACK_SOURCE_GENERATOR "TGZ")
SET(CPACK_SOURCE_IGNORE_FILES
    "/.git/;"
    "/build/;"
)

# DEB package
SET(CPACK_DEBIAN_PACKAGE_MAINTAINER "CoF-Luke")
SET(CPACK_DEBIAN_PACKAGE_SHLIBDEPS ON)
SET(CPACK_DEBIAN_PACKAGE_DEPENDS "libc6 (>= 2.31), libstdc++6 (>= 11), libm6, libgcc-s1")

# RPM package
SET(CPACK_RPM_PACKAGE_REQUIRES "libc6 >= 2.31, libstdc++ >= 11, libm, libgcc")


# WIX package
SET(CPACK_WIX_PRODUCT_GUID "4d0c47f0-a7d1-47f7-86a3-c2a3e8126d0d")
SET(CPACK_WIX_UPGRADE_GUID "f1380ca4-6e39-43d3-8958-a7dabe1cf70a")
SET(CPACK_WIX_CMAKE_PACKAGE_REGISTRY TRUE)
SET(CPACK_WIX_ARCHITECTURE "x64")

# DragNDrop package
SET(CPACK_DMG_FORMAT UDZO)

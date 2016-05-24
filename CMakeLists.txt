#
# Copyright (c) 2010-2016, Gilles Caulier, <caulier dot gilles at gmail dot com>
#
# Redistribution and use is allowed according to the terms of the BSD license.
# For details see the accompanying COPYING-CMAKE-SCRIPTS file.

project(digikam-doc)

set(CMAKE_MIN_VERSION   "3.0.0")
set(ECM_MIN_VERSION     "1.5.0")
set(KF5_MIN_VERSION     "5.1.0")

cmake_minimum_required(VERSION ${CMAKE_MIN_VERSION})

############## ECM setup ######################

find_package(ECM ${ECM_MIN_VERSION} CONFIG REQUIRED)
set(CMAKE_MODULE_PATH ${ECM_MODULE_PATH})

include(KDEInstallDirs)
include(KDEFrameworkCompilerSettings)
include(KDECMakeSettings)
include(FeatureSummary)

############## Find Packages ###################

find_package(KF5 ${KF5_MIN_VERSION}
             REQUIRED COMPONENTS
             DocTools
)

add_subdirectory(digikam)
add_subdirectory(showfoto)

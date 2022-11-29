#
# SPDX-FileCopyrightText: 2010-2022, Gilles Caulier, <caulier dot gilles at gmail dot com>
#
# SPDX-License-Identifier: BSD-3-Clause
#

project(digikam-doc)

set(CMAKE_MIN_VERSION   "3.16")
set(ECM_MIN_VERSION     "5.55.0")
set(KF5_MIN_VERSION     "5.55.0")

cmake_minimum_required(VERSION ${CMAKE_MIN_VERSION})

############## ECM setup ######################

find_package(ECM ${ECM_MIN_VERSION} CONFIG REQUIRED)
set(CMAKE_MODULE_PATH ${ECM_MODULE_PATH})

# KF5 Framework macros
include(KDEInstallDirs)
include(KDECMakeSettings)
include(KDECompilerSettings NO_POLICY_SCOPE)

# ECM macros
include(ECMSetupVersion)
include(ECMOptionalAddSubdirectory)
include(ECMInstallIcons)
include(ECMPoQmTools)

# Cmake macros
include(CMakePackageConfigHelpers)
include(CheckFunctionExists)
include(FeatureSummary)

############## Find Packages ###################

find_package(KF5 ${KF5_MIN_VERSION}
             REQUIRED COMPONENTS
             I18n
             DocTools
)

add_subdirectory(digikam)
add_subdirectory(showfoto)

if(KF5DocTools_FOUND)
    kdoctools_install(po)
endif()

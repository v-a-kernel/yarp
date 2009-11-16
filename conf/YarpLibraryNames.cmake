# Copyright: (C) 2009 RobotCub Consortium
# Author: Paul Fitzpatrick
# CopyPolicy: Released under the terms of the GNU GPL v2.0.

IF(YARP_HAS_MATH_LIB)
IF(USE_ATLAS)
SET(YARP_LIBRARIES "${YARP_dev_LIB};${YARP_EXTMOD_LIBS};${YARP_dev_EXT_LIBS};${YARP_math_LIB};${ATLAS_CBLAS_LIBRARY};${ATLAS_ATLAS_LIBRARY};${GSL_LIBRARY};${YARP_sig_compat_LIB};${YARP_OS_compat_LIB};${YARP_sig_LIB};${YARP_OS_LIB};${ACE_LIB}")
ELSE(USE_ATLAS)
SET(YARP_LIBRARIES "${YARP_dev_LIB};${YARP_EXTMOD_LIBS};${YARP_dev_EXT_LIBS};${YARP_math_LIB};${GSL_LIBRARIES};${YARP_sig_compat_LIB};${YARP_OS_compat_LIB};${YARP_sig_LIB};${YARP_OS_LIB};${ACE_LIB}")
ENDIF(USE_ATLAS)
SET(YARP_INCLUDES "${ACE_INCLUDE_DIR};${YARP_OS_INC};${YARP_sig_INC};${YARP_math_INC};${GSL_INCLUDE_DIR};${YARP_dev_INC};${YARP_OS_compat_INC}")
ELSE(YARP_HAS_MATH_LIB)
SET(YARP_LIBRARIES "${YARP_dev_LIB};${YARP_EXTMOD_LIBS};${YARP_dev_EXT_LIBS};${YARP_sig_compat_LIB};${YARP_OS_compat_LIB};${YARP_sig_LIB};${YARP_OS_LIB};${ACE_LIB}")
SET(YARP_INCLUDES "${ACE_INCLUDE_DIR};${YARP_OS_INC};${YARP_sig_INC};${YARP_dev_INC};${YARP_OS_compat_INC}")
ENDIF(YARP_HAS_MATH_LIB)

# pick up auto-generated headers as well
SET(YARP_INCLUDES "${YARP_INCLUDES};${CMAKE_BINARY_DIR}/include")

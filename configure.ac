AC_PREREQ([2.62])
AC_INIT([heirloom-oawk], [0.0.20240915], [https://github.com/mpsuzuki/heirloom-oawk/-/issues])
AM_INIT_AUTOMAKE([foreign])

# Set default prefix
AC_PREFIX_DEFAULT(["/usr/ccs"])

# Checks for programs.
AC_PROG_CC
AC_PROG_MAKE_SET
AC_PROG_RANLIB

# Pack included heirloom-libXXX in make dist, subdirectories must be configured always.
AC_CONFIG_SUBDIRS([heirloom-libcommon])
AC_CONFIG_SUBDIRS([heirloom-libuxre])

HEIRLOOM_FIND_LIBUXRE
HEIRLOOM_FIND_LIBCOMMON

AC_CONFIG_HEADERS([config.h])
AC_CONFIG_FILES([GNUmakefile])
AC_OUTPUT

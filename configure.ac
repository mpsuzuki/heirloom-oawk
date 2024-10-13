AC_PREREQ([2.62])
AC_INIT([heirloom-oawk], [0.0.20240915], [https://github.com/mpsuzuki/heirloom-oawk/-/issues])
AM_INIT_AUTOMAKE([foreign])

# Set default prefix
AC_PREFIX_DEFAULT(["/usr/ccs"])

# Checks for programs.
AC_PROG_CC
AC_PROG_MAKE_SET
AC_PROG_RANLIB

# Search libuxre
AC_ARG_WITH([libuxre],
AS_HELP_STRING([--with-libuxre=prefix-to-builddir-libuxre],
  [path to the builddir of libuxre]),
  [libuxre_prefix=${withval}],
  [libuxre_prefix=../heirloom-libuxre])

AC_MSG_CHECKING([regex.h])
if test -r ${libuxre_prefix}/regex.h
then
  AC_MSG_RESULT([${libuxre_prefix}/regex.h])
  libuxre_include='$(libuxre_prefix)'
elif test -r ${libuxre_prefix}/include/regex.h
then
  AC_MSG_RESULT([${libuxre_prefix}/include/regex.h])
  libuxre_include='$(libuxre_prefix)/include'
else
  AC_MSG_ERROR([not found])
fi

AC_MSG_CHECKING([libuxre.a])
if test -r ${libuxre_prefix}/libuxre.a
then
  AC_MSG_RESULT([${libuxre_prefix}/libuxre.a])
  libuxre_lib='$(libuxre_prefix)'
elif test -r ${libuxre_prefix}/lib/libuxre.a
then
  AC_MSG_RESULT([${libuxre_prefix}/lib/libuxre.a])
  libuxre_include='$(libuxre_prefix)/lib'
else
  AC_MSG_ERROR([not found])
fi
AC_SUBST([libuxre_prefix])
AC_SUBST([libuxre_include])
AC_SUBST([libuxre_lib])

# Search libcommon
AC_ARG_WITH([libcommon],
AS_HELP_STRING([--with-libcommon=prefix-to-builddir-libcommon],
  [path to the builddir of libcommon]),
  [libcommon_prefix=${withval}],
  [libcommon_prefix=../heirloom-libcommon])

AC_MSG_CHECKING([regexp.h])
if test -r ${libcommon_prefix}/regexp.h
then
  AC_MSG_RESULT([${libcommon_prefix}/regexp.h])
  libcommon_include='$(libcommon_prefix)'
elif test -r ${libcommon_prefix}/include/regexp.h
then
  AC_MSG_RESULT([${libcommon_prefix}/include/regexp.h])
  libcommon_include='$(libcommon_prefix)/include'
else
  AC_MSG_ERROR([not found])
fi

AC_MSG_CHECKING([libcommon.a])
if test -r ${libcommon_prefix}/libcommon.a
then
  AC_MSG_RESULT([${libcommon_prefix}/libcommon.a])
  libcommon_lib='$(libcommon_prefix)'
elif test -r ${libcommon_prefix}/lib/libcommon.a
then
  AC_MSG_RESULT([${libcommon_prefix}/lib/libcommon.a])
  libcommon_include='$(libcommon_prefix)/lib'
else
  AC_MSG_ERROR([not found])
fi
AC_SUBST([libcommon_prefix])
AC_SUBST([libcommon_include])
AC_SUBST([libcommon_lib])







AC_CONFIG_HEADERS([config.h])
AC_CONFIG_FILES([GNUmakefile])
AC_OUTPUT

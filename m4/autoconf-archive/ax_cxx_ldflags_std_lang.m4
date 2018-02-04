# ============================================================================
#  https://www.gnu.org/software/autoconf-archive/ax_cxx_ldflags_std_lang.html
# ============================================================================
#
# SYNOPSIS
#
#   AX_CXX_LDFLAGS_STD_LANG(LD-FLAGS)
#
# DESCRIPTION
#
#   Append to LD-FLAGS the set of link-time flags that should be passed to
#   the C++ compiler in order to enable use of C++ features as defined in
#   the ANSI C++ standard (eg. use of standard iostream classes in the `std'
#   namespace, etc.). Note that if you use GNU Libtool you may need to
#   prefix each of those switches with `-Xlinker' so that Libtool doesn't
#   discard them (see Libtool's manual and `AC_LIBTOOLIZE_LDFLAGS').
#
# LICENSE
#
#   Copyright (c) 2008 Ludovic Courtes <ludo@chbouib.org>
#
#   Copying and distribution of this file, with or without modification, are
#   permitted in any medium without royalty provided the copyright notice
#   and this notice are preserved. This file is offered as-is, without any
#   warranty.

#serial 8

AU_ALIAS([AC_CXX_LDFLAGS_STD_LANG], [AX_CXX_LDFLAGS_STD_LANG])
AC_DEFUN([AX_CXX_LDFLAGS_STD_LANG],
  [AC_LANG_ASSERT([C++])
   AC_REQUIRE([AX_COMPILER_VENDOR])
   case "$ax_cv_cxx_compiler_vendor" in
     sgi)    $1="$$1 -LANG:std -exceptions";;
     hp)     $1="$$1 -AA";;
   esac])

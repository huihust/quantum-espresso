# Copyright (C) 2001-2014 Quantum ESPRESSO Foundation

AC_DEFUN([X_AC_QE_F90RULE], [

AC_PROG_MAKE_SET
echo $ECHO_N "checking whether Fortran files must be preprocessed... $ECHO_C"
if test "$have_cpp" -ne 0
then
        f90rule="\$(MPIF90) \$(F90FLAGS) -c \$<"
        echo "${ECHO_T}no"
else
        f90rule="\$(CPP) \$(CPPFLAGS) \$< -o \$(*).F90 ; \\
        \$(MPIF90) \$(F90FLAGS) -c \$(*).F90 -o \$(*).o"
        echo "${ECHO_T}yes"
fi

AC_SUBST(f90rule)

])

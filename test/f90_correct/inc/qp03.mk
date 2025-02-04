#
# Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
# See https://llvm.org/LICENSE.txt for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
#

########## Make rule for test qp03  ########


qp03: run


build:  $(SRC)/qp03.f08
	-$(RM) qp03.$(EXESUFFIX) core *.d *.mod FOR*.DAT FTN* ftn* fort.*
	@echo ------------------------------------ building test $@
	-$(CC) -c $(CFLAGS) $(SRC)/check.c -o check.$(OBJX)
	-$(FC) -c $(FFLAGS) $(LDFLAGS) $(SRC)/qp03.f08 -o qp03.$(OBJX)
	-$(FC) $(FFLAGS) $(LDFLAGS) qp03.$(OBJX) check.$(OBJX) $(LIBS) -o qp03.$(EXESUFFIX)


run:
	@echo ------------------------------------ executing test qp03
	qp03.$(EXESUFFIX)

verify: ;

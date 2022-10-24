#
# Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
# See https://llvm.org/LICENSE.txt for license information.
# SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
#

########## Make rule for test sincos  ########


build:
	@echo ------------------------------------- building test $(TEST)
	$(FC) $(FFLAGS) -O1 $(SRC)/$(TEST).f90 -o $(TEST).$(EXE)

run:
	@echo ------------------------------------ executing test $(TEST)
	./$(TEST).$(EXE)

verify: ;

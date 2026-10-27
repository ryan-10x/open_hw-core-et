# Copyright (c) 2026 Ainekko
# SPDX-License-Identifier: Apache-2.0
#
# Xcelium probe setup for icache_l0_superpage_alias_tb.
# Loaded by Makefile.xcelium through -input.
#
# Batch runs add -run -exit on the xrun command line. In the GUI the
# simulation waits at time 0 with the probes in place.

database -open waves -into waves.shm -default -event
# Whole testbench hierarchy, DUT and PTW internals included. -all leaves out
# unpacked arrays; -memories adds them (the TB memory model among them)
probe -create icache_l0_superpage_alias_tb -depth all -all -memories -shm -database waves

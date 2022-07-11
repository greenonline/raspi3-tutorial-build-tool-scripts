#!/bin/sh

sh -x ./aa_01_get_sources.sh
sh -x ./aa_02_verify_sources.sh
sh -x ./aa_03_unpack_sources.sh
sh -x ./aa_04_remove_sources.sh
sh -x ./aa_05_makelinks.sh
sh -x ./aa_06_build_binutils.sh
sh -x ./aa_07_build_gcc.sh

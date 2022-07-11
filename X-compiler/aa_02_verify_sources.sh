#!/bin/sh

sha512sum -c sha512.sum --ignore-missing
for i in *.sig; do gpg2 --auto-key-retrieve --verify-files "${i}"; done


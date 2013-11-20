#!/usr/bin/env bash

gcc -o feifei -lpodofo -lz -lpng -lcrypto -ljpeg -ltiff -lfontconfig -lfreetype ImageConverter.cpp podofoimg2pdf.cpp

#!/usr/bin/env bash

awk '/^>/ {if (seqlen){printf  "%d\t",seqlen}; gsub(/>/,X,$0) ; gsub(/\s.+/,X,$0) ; printf "%s\t",$0 ;seqlen=0;next; } { seqlen = seqlen +length($0)}END{printf "%d\n", seqlen}' $1


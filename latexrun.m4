#!/usr/bin/env python3

# This file was generated from an m4 template.
syscmd(`date -u +"%Y-%m-%dT%H:%M:%SZ" |
  sed "s/^/# Generation date-time (ISO 8601): /"')dnl
syscmd(`git remote get-url origin |
  tr ":" "/" |
  sed "s/^git@/https:\\/\\//" |
  sed "s/\\.git$//" |
  sed "s/^/# Git repository URL: /"')dnl
format(`# Commit ID: %s', include(HEAD_PATH))dnl

syscmd(`perl -pe "chomp if eof" LICENSE |
  sed "s/^/# /"')

include(`src/latexrun.py')

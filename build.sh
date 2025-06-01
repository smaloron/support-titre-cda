#!/bin/sh

mkdir docs

unzip webHelp*-all.zip -d docs

# git subtree push --prefix docs origin gh-pages
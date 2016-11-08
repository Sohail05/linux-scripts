#!/bin/sh
echo "ripping" $1 "into ~/sites"
mkdir ~/sites
cd sites
wget --page-requisites $1

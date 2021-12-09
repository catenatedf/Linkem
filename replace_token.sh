#!/bin/bash

for line in $(cat RELEASE_DEVOPS_TEST.properties);
do
key="<value>${line%%:*}"
value="<value>${line#*:}"

sed -i "s|$key|$value|" RELEASE_DEVOPS.substvar

done

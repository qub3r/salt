#!/usr/bin/env bash

echo $'10.0.1.10\tsalt' >> /etc/hosts
echo $'10.0.1.10\tmaster.internal' >> /etc/hosts
echo $'10.0.1.20\tminion01.internal' >> /etc/hosts

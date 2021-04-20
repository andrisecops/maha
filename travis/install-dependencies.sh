#!/bin/bash
set -ev
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 6B05F25D762E3157
sudo apt-get update --option Acquire::Retries=100 --option Acquire::http::Timeout="60"
sudo apt-get install rpm

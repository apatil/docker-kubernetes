#! /usr/bin/env bash


cp -f _output/local/go/bin/* /target
cp -f contrib/init/systemd/*.service /systemd-target
echo "$(git log -n 1)" > /target/.revision
chmod +x /target/*

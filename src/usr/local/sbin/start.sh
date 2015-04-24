#! /usr/bin/env bash


cp -f _output/local/go/bin/* /target
cp -f contrib/init/systemd/*.service /systemd-target
chmod +x /target/*

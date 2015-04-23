#! /usr/bin/env bash


cp -f /opt/go/src/github.com/GoogleCloudPlatform/kubernetes/_output/local/go/bin/* /target
cp -f /opt/go/src/github.com/GoogleCloudPlatform/kubernetes/contrib/init/systemd/*.service /systemd-target
echo "$(git log -n 1)" > /target/.revision
chmod +x /target/*

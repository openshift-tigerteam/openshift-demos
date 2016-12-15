#!/bin/bash

# oc new-app https://github.com/samueltauil/nexus
oc new-app https://github.com/openshift-tigerteam/openshift-demos --context-dir="nexus-on-ocp"

oc expose svc nexus
sleep 30
url=$(oc get routes | egrep 'nexus' | awk '{print $2}')
export NEXUS_BASE_URL=$url
sleep 220
./addjbossrepos.sh

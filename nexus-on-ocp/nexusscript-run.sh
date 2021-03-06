#!/bin/bash
# https://github.com/sonatype/nexus-book-examples/tree/nexus-3.0.x/scripting/simple-shell-example

name=$1

printf "Running Integration API Script $name\n\n"

curl -v -X POST -u admin:admin123 --header "Content-Type: text/plain" "${NEXUS_BASE_URL}/service/siesta/rest/v1/script/$name/run"


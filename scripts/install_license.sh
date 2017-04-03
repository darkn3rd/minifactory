#!/bin/sh
LICENSE_KEY=''
LICENSE_KEY="$(echo ${LICENSE_KEY} | tr -d '\n')" # script new lines

curl -i -X POST \
   -H "Content-Type:application/json" \
   -d "{ \"licenseKey\": \"${LICENSE_KEY}\" }" \
   'http://admin:password@172.16.0.48:8081/artifactory/api/system/licenses'

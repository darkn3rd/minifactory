CONFIG="$(</dev/stdin)"

curl -i -X POST \
   -H "Content-Type:application/xml" \
   -d "${CONFIG}" \
   'http://admin:password@172.16.0.48:8081/artifactory/api/system/configuration'

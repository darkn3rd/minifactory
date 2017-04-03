curl -X GET 'http://admin:password@172.16.0.48:8081/artifactory/api/repositories' 2> /dev/null | grep key | cut -d: -f2 | tr -d '", '

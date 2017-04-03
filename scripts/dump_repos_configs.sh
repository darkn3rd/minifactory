LIST=$(curl -X GET 'http://admin:password@172.16.0.48:8081/artifactory/api/repositories' 2> /dev/null | grep key | cut -d: -f2 | tr -d '", ')
CONFIG_PATH="./repo_configs"
mkdir ${CONFIG_PATH}

for REPO in ${LIST}; do
   curl -X GET "http://admin:password@172.16.0.48:8081/artifactory/api/repositories/${REPO}" 2> /dev/null > ${CONFIG_PATH}/${REPO}.json
done

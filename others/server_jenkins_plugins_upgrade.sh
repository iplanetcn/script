alias jenkins='java -jar /Users/john/.jenkins/jenkins-cli.jar -s http://88.88.10.153:8080/ -auth duliqiang:duliqiang'
UPDATE_LIST=$( jenkins list-plugins | grep -e ')$' | awk '{ print $1 }' ); 
UPDATE_LIST="${UPDATE_LIST/fir-plugin}"
echo ${UPDATE_LIST}
if [ ! -z "${UPDATE_LIST}" ]; then 
    echo Updating Jenkins Plugins: ${UPDATE_LIST}; 
    jenkins install-plugin ${UPDATE_LIST};
    jenkins safe-restart;
fi

echo "Update Complete." 

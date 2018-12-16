#!bin/bash
echo "start..."
docker pull jenkins
docker pull sonatype/nexus3
docker pull gitlab/gitlab-ce
echo "...done"

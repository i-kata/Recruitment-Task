#!/bin/bash
  
cd ~
admin_pass="$(sudo cat /var/lib/jenkins/secrets/initialAdminPassword)"
num="$(date +%s)"
job_name="JOB"$num
java -jar jenkins-cli.jar -s http://localhost:8080/ -auth admin:$admin_pass create-job $job_name < job.xml
echo "$(java -jar jenkins-cli.jar -s http://localhost:8080/ -auth admin:$admin_pass list-jobs)" > ~/current_jobs.txt
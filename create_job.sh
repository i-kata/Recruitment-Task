#!/bin/bash

wget http://localhost:8080/jnlpJars/jenkins-cli.jar
java -jar jenkins-cli.jar -s http://localhost:8080/ get-job template > template.xml
java -jar jenkins-cli.jar -s http://localhost:8080/ create-job new_job_name < new_job_name.xml
java -jar jenkins-cli.jar -s http://localhost:8080/ groovy scripts/add_job_to_view.groovy
java -jar jenkins-cli.jar -s https://localhost:8080/ -webSocket build ExampleJob
java -jar jenkins-cli.jar -s http://localhost:8080/ list-jobs tools

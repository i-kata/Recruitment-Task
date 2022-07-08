#!/bin/bash

echo wget http://jenkins/jnlpJars/jenkins-cli.jar
echo java -jar jenkins-cli.jar -s https://localhost:8080/ - webSocket build ExampleJob

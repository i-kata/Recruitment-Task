#!/bin/bash

echo wget http://localhost:8080/jnlpJars/jenkins-cli.jar
echo java -jar jenkins-cli.jar -s https://localhost:8080/ -webSocket build ExampleJob

#!/bin/bash
# Script to run the Spring Boot application in the foreground on Linux/WSL

ARTIFACT_ID="resume-standardizer"
VERSION="0.0.1-SNAPSHOT" # Ensure this matches your pom.xml
JAR_NAME="${ARTIFACT_ID}-${VERSION}.jar"
JAR_PATH="target/$JAR_NAME"

if [ ! -f "$JAR_PATH" ]; then
    echo "JAR file not found: $JAR_PATH"
    echo "Please build the project first using: ./build.sh"
    exit 1
fi

echo "Starting the application: $JAR_NAME (foreground)"
java -jar "$JAR_PATH"

# Note: This runs the application in the foreground.
# For background execution and PID management, build the project and then
# use the scripts in the 'target' directory (e.g., cd target && ./start.sh).
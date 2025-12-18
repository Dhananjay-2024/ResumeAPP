#!/bin/bash
# Script to build the project on Linux/WSL

echo "Ensuring mvnw is executable..."
if [ -f ./mvnw ] && [ ! -x ./mvnw ]; then
  chmod +x ./mvnw
fi

echo "Building the project using ./mvnw clean install..."
./mvnw clean install

# Check if the build was successful
if [ $? -eq 0 ]; then
  echo "Build successful."
  echo "The application JAR is in the 'target' directory."
  echo "To run the application:"
  echo "  - For foreground execution: ./start.sh (from project root)"
  echo "  - For background execution with PID management: cd target && ./start.sh"
else
  echo "Build failed."
  exit 1
fi
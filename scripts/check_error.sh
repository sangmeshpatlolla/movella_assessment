#!/bin/bash

while true
do
  # Get the list of pods using Kubernetes API
  pods=$(kubectl get pods -o=name)
  
  # Display the list of pods
  echo "List of pods:"
  echo $pods
  
  while read -r pod; do
    # Retrieve logs 
    logs=$(kubectl logs $pod)
    
    # Parsing for errors
    if echo "$logs" | grep -q "error"; then
      echo "$logs" >> /var/log/errors.log
    fi
    
  done <<< "$pods"
  
  # Wait for 5 minutes before repeating the monitoring process
  sleep 300
done






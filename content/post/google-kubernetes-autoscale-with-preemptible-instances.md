---
author: "Sean Davis"
title: 
date: "September 8, 2019"
draft: false
categories:
  - IT
  - devops
  - cloud
tags:
  - cloud
  - google cloud
  - kubernetes
  - helm
  - docker
  - containers
  - devops
  - software development
  - microservices
---

```sh
export POOL_NAME='preempt-1'
export CLUSTER_NAME='cluster-1'
```


```sh
gcloud beta container node-pools create ${POOL_NAME} --preemptible \
	   --cluster ${CLUSTER_NAME} --enable-autoscaling \
	   --min-nodes=0 --max-nodes=50 \
	   --machine-type=n1-standard-2                                    
```

```yaml
apiVersion: v1
kind: Job
spec:
  nodeSelector:
    cloud.google.com/gke-preemptible: "true"
  template:
    spec:
      containers:
      - name: pyversion
        image: python:3.7
        command: ["python",  "--version"]
      restartPolicy: Never
  backoffLimit: 4
```

---
title: Test-driving Google Cloud Composer, a managed Apache Airflow service
author: Sean Davis
date: '2019-05-21'
slug: test-driving-google-cloud-composer-a-managed-apache-airflow-service
draft: true
categories:
  - devops
  - IT
tags:
  - airflow
  - devops
  - data engineering
  - data science
  - gcp
aliases:
  - /post/2019-05/2019-05-21-test-driving-google-cloud-composer-a-managed-apache-airflow-service/
---

Complex workflows are not at all uncommon in genomics work. As an
early adopter of systems like [snakemake] and [nextflow], I can attest
to how much more reliable, reproducible, and maintainable these
workflows when using the right toolkit. 

[snakemake]: https://snakemake.readthedocs.io/
[nextflow]: https://www.nextflow.io/

In the same sense, when working on data engineering tasks to transform
data from one form to another through a set of cloud services and
scripts, a workflow system like [Apache Airflow] is one of the right
toolkits. Airflow employs a lot of the same concepts as other workflow
engines, including the idea that [tasks] can be composed into a set of
dependent steps that comprise a directed acyclic graph, or
[DAG]. Airflow workflows are described using python, but the tasks can
be something as simple as a bash script to as complicated as a
cloud-based artificial intelligence API. 

[Apache Airflow]: https://airflow.apache.org/
[tasks]: https://airflow.apache.org/concepts.html#tasks
[DAG]:https://airflow.apache.org/concepts.html#dags

Airflow includes dozens of [operators] and [hooks] to data services to
facilitate writing complex distributed workflows and can use a mixture
of [execution engines]


[operators]: https://airflow.apache.org/_api/index.html#operators-packages
[hooks]: https://airflow.apache.org/_api/index.html#hooks-packages
[execution engines]: https://airflow.apache.org/_api/index.html#executors-packages

While setting up and running Airflow locally on a laptop or desktop is
[not too challenging](https://airflow.apache.org/installation.html),
once resources become limited or one wants more stable network and
dedicated compute resources, a managed service like [Google Cloud
Composer], which is just a cloud service running Airflow, becomes
useful.

[Google Cloud Composer]: https://cloud.google.com/composer/


{{< figure src="/img/basic_airflow.png" title="<h3>Schematic representation of airflow architecture</h3>" caption="WebUI: the portal forusers to view the related status of the DAGs. Metadata DB: the metastore of Airflow for storing various metadata including job status, task instance status, etc. Scheduler: a multi-process which parses the DAG bag, creates a DAG object and triggers executor to execute those dependency met tasks. " >}}

To list the running environments:

```
gcloud composer environments list --location=us-central1
```

And the output will be something along the lines of:


```
┌───────────┬─────────────┬─────────┬──────────────────────────┐
│    NAME   │   LOCATION  │  STATE  │       CREATE_TIME        │
├───────────┼─────────────┼─────────┼──────────────────────────┤
│ airflow-1 │ us-central1 │ RUNNING │ 2019-05-21T16:34:12.891Z │
└───────────┴─────────────┴─────────┴──────────────────────────┘
```


To add or update a DAG, simply move the `.py` file into the `dags`
folder in the google cloud storage bucket associated with the
environment. Alternatively, the `gcloud composer` command can
accomplish the task explicitly.


```
gcloud composer environments storage dags import \
    --environment airflow-1 \
    --location us-central1 \
    --source prep_sra.py
```

Your Python dependency must not have external dependencies or conflict
with Cloud Composer's dependencies to install Python dependencies from
the Python Package Index or other locations supported by the
`requirements.txt` file.  

```
gcloud composer environments update ENVIRONMENT-NAME \
	--update-pypi-packages-from-file requirements.txt \
	--location LOCATION
```

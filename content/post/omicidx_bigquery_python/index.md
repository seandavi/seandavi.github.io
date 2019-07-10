---
title: "OmicIDX on BigQuery"
date: "2019-06-04"
---
OmicIDX is a project to democratize access to omics *metadata*. As the sizes of omics
repositories have grown into the millions of available samples, thinking of the 
metadata themselves as **Big Data** seems reasonable. Additionally, by making the 
metadata more fit-for-use for text mining, natural language processing, ingestion into
machine learning or search engines, OmicIDX aims to facilitate augmentation and analysis
of these metadata. 

In practice, the OmicIDX mines data from the NCBI [Sequence Read Archive (SRA)], updated monthly, and the
NCBI [Biosample] database, updated daily. 

[Biosample]: https://www.ncbi.nlm.nih.gov/biosample/
[Sequence Read Archive (SRA)]: https://trace.ncbi.nlm.nih.gov/Traces/sra/sra.cgi?

## What is BigQuery?

[BigQuery] is an enterprise data warehouse and database. It is managed by Google, meaning
there are no servers to set up, storage to manage, or configuration. Access to data stored in 
BigQuery can be public, limited to individuals, or to just the owner. 

[BigQuery]: https://cloud.google.com/bigquery/

In the case of OmicIDX, the data in BigQuery are publicly accessible. Querying the data
still requires an account and billing to be activated, but Google offers free credits to 
new users that will allow *many* queries against the OmicIDX data.

# Getting started

Before using BigQuery in python, one needs to create an account with Google and activate the
BigQuery engine. 

**See [here](https://cloud.google.com/bigquery/docs/quickstarts/quickstart-web-ui) for the quickstart
tutorial. (5 minutes)**

After completing the quickstart, navigate to:

https://console.cloud.google.com/bigquery?project=isb-cgc-01-0006&folder&organizationId&p=isb-cgc-01-0006&d=omicidx&page=dataset

On the left panel, you should now see the `isb-cgc-01-0006` project. Expanding that item, the `omicidx` 
dataset is available. 

At this point, explore the OmicIDX data via the Google Console. BigQuery uses standard SQL 
for queries. 

# Python access to BigQuery

- Install [google-cloud-bigquery](https://cloud.google.com/bigquery/docs/reference/libraries) and follow instructions
go get started.

Note that while I am using python here, BigQuery client libraries are available for 
many languages. A command-line client (bq) is also available for shell scripting, etc.

# Examples

From here on out, the code can speak for itself. For more details on using BigQuery from python, check out the [documentation](https://googleapis.github.io/google-cloud-python/latest/bigquery/index.html)


```python
from google.cloud import bigquery
```


```python
import warnings
warnings.filterwarnings('ignore')
```


```python
client = bigquery.Client()
```

## Studies published by year


```python
sql_query = """
SELECT 
    DATE(
    EXTRACT(YEAR FROM publish_date),
    EXTRACT(MONTH FROM publish_date),
    1) as month,
    count(*) as studies
FROM `isb-cgc-01-0006.omicidx.sra_study` 
where publish_date <= CURRENT_TIMESTAMP()
GROUP BY month
ORDER BY month desc;
"""
```

Here, use a convenience method to convert results to a pandas dataframe. 


```python
res = client.query(sql_query).to_dataframe()
```


```python
res.head()
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>month</th>
      <th>studies</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>2019-06-01</td>
      <td>219</td>
    </tr>
    <tr>
      <th>1</th>
      <td>2019-05-01</td>
      <td>4762</td>
    </tr>
    <tr>
      <th>2</th>
      <td>2019-04-01</td>
      <td>4230</td>
    </tr>
    <tr>
      <th>3</th>
      <td>2019-03-01</td>
      <td>2796</td>
    </tr>
    <tr>
      <th>4</th>
      <td>2019-02-01</td>
      <td>4132</td>
    </tr>
  </tbody>
</table>
</div>



The [seaborn](https://seaborn.pydata.org/) library is a high-level plotting library based on matplotlib. 


```python
import matplotlib.pyplot as plt
plt.figure(figsize=(16, 8))
import seaborn as sns
sns.scatterplot(x = "month", y = "studies", data = res)
```




    <matplotlib.axes._subplots.AxesSubplot at 0x11f613160>



## Experiments by type

The `sra_experiment` table contains most of the details about the experimental
strategies. In particular, the `library_strategy` column 


```python
sql_query = """
SELECT library_strategy, count(*) as count
FROM `isb-cgc-01-0006.omicidx.sra_experiment`
GROUP BY library_strategy 
ORDER BY count desc"""
```


```python
res = client.query(sql_query).to_dataframe()
```


```python
res.head(15)
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>library_strategy</th>
      <th>count</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>WGS</td>
      <td>1839830</td>
    </tr>
    <tr>
      <th>1</th>
      <td>AMPLICON</td>
      <td>1499138</td>
    </tr>
    <tr>
      <th>2</th>
      <td>RNA-Seq</td>
      <td>1397258</td>
    </tr>
    <tr>
      <th>3</th>
      <td>OTHER</td>
      <td>591845</td>
    </tr>
    <tr>
      <th>4</th>
      <td>WXS</td>
      <td>316378</td>
    </tr>
    <tr>
      <th>5</th>
      <td>CLONE</td>
      <td>134435</td>
    </tr>
    <tr>
      <th>6</th>
      <td>ChIP-Seq</td>
      <td>127278</td>
    </tr>
    <tr>
      <th>7</th>
      <td>RAD-Seq</td>
      <td>68102</td>
    </tr>
    <tr>
      <th>8</th>
      <td>POOLCLONE</td>
      <td>57751</td>
    </tr>
    <tr>
      <th>9</th>
      <td>Targeted-Capture</td>
      <td>55953</td>
    </tr>
    <tr>
      <th>10</th>
      <td>Bisulfite-Seq</td>
      <td>51813</td>
    </tr>
    <tr>
      <th>11</th>
      <td>miRNA-Seq</td>
      <td>42797</td>
    </tr>
    <tr>
      <th>12</th>
      <td>WGA</td>
      <td>34278</td>
    </tr>
    <tr>
      <th>13</th>
      <td>ATAC-seq</td>
      <td>33992</td>
    </tr>
    <tr>
      <th>14</th>
      <td>SELEX</td>
      <td>30109</td>
    </tr>
  </tbody>
</table>
</div>



## Number of "cancer" studies

BigQuery is a capable system even for full text searching. In this case,
the `abstract`, `title`, and `description` fields for a study contain the 
largest amount of free text. Searching each separately is a possibility, 
but BigQuery has a `CONCAT` operator that can build up a single long string
for search. Converting that string to all lower-case (using `LOWER`) facilitates
case-insensitive search for `cancer`. Note that in SQL, the wildcard character
is `%`. 


```python
sql_query = """
SELECT count(*) as count
FROM `isb-cgc-01-0006.omicidx.sra_study`
WHERE LOWER(CONCAT(abstract, " ", title, " ", description)) like '%cancer%'
"""
```


```python
res = client.query(sql_query).to_dataframe()
```


```python
print("There are {0} studies in which `cancer`  appears in the title, abstract, or description".format( res['count'][0]))
```

    There are 734 studies in which `cancer`  appears in the title, abstract, or description


## Distribution of number of attributes per sample

The `sra_sample` table contains most of the metadata that are associated with
the "phenotype" or "characteristics" of the sample. The sample attributes are 
included in a "nested column" in BigQuery. The array length
of that the `attributes` column then gives the number of distinct attributes 
for each sample. While pulling those results, one-per-sample, back into python
is one way to proceed, writing a SQL query that creates the histogram for us
will be more efficient.


```python
sql_query = """
with t as
  (SELECT array_length(attributes) as attribute_count
  FROM `isb-cgc-01-0006.omicidx.sra_sample`) 
SELECT t.attribute_count, count(*) as nbr_of_samples
  FROM t
  GROUP BY attribute_count
  ORDER BY attribute_count asc
"""
```


```python
res = client.query(sql_query).to_dataframe()
```


```python
plt.figure(figsize=(16, 8))
g = sns.scatterplot(x="attribute_count", y="nbr_of_samples", data=res)
g.set_yscale('log')
plt.show()
```


![png](output_23_0.png)


# Conclusion

This little post is just to whet the appetite. BigQuery is a new technology
for many informatics folks, but it is quite powerful, extensible, and is
nearly free for datasets of even modest size. With libraries for R, python, 
java, as well as a simple command-line client, access to OmicIDX in BigQuery
is well-supported.

Other approaches to accessing OmicIDX data are forthcoming. 

# Seattle Public Library's Open Checkout Data

This repository contains code for the paper ["Seattle Public Library’s Open Checkout Data: What Can It Tell Us About Readers and Book Popularity More Broadly?"](https://doi.org/10.5334/johd.332), published in the *Journal of Open Humanities Data* in August 2025.

## Introduction

Our paper introduces the Seattle Public Libary's [Checkouts by Title](https://data.seattle.gov/Community-and-Culture/Checkouts-by-Title/tmmm-ytt6/about_data) data as a powerful, granular resource for researchers interested in studying book popularity and readership. We discuss the dataset's particularities and run convergent validity tests to understand how the checkout data functions as a proxy for national readership and book sales.

We conclude that SPL’s checkout data provides a rare window into library circulation and reading habits, with granular, time-series insights. However, its generalizability—particularly across regions and in relation to book sales—remains uncertain.

## Data and Code

The SPL's live, regularly updated data is available through the [Socrata API and Seattle's open data portal](https://data.seattle.gov/Community-and-Culture/Checkouts-by-Title/tmmm-ytt6/about_data). It is the best source for up-to-date library checkout data. In this repository, we provide the R script `Month_Loop_SPL.R` to help other researchers work with this data. 

We also uploaded a static copy of the SPL checkout (2006-February 2025) to [Zenodo](https://zenodo.org/records/15792698). Results from our paper can be replicated by using the Zenodo data and the Python notebook `SPL_Checkout_Analysis.ipynb.`

## Citation

Neel Gupta, David Christensen, Melanie Walsh, ["Seattle Public Library’s Open Checkout Data: What Can It Tell Us About Readers and Book Popularity More Broadly?"](https://doi.org/10.5334/johd.332), *Journal of Open Humanities Data*,  11 (1): 46. https://doi.org/10.5334/johd.332.

```
@article{Gupta-2025,
 abstract = {The Seattle Public Library (SPL) publishes anonymized, open-access checkout data for every item in its collection, dating from 2005 to the present. To our knowledge, it is the only U.S. library to release checkout data by title with this level of temporal detail: one dataset records exact timestamps for print book checkouts, while another provides monthly aggregates across all formats (e.g., ebooks, audiobooks, print books). Because U.S. book sales data is largely inaccessible outside the publishing industry, SPL\’s open checkout data offers a rare and valuable alternative. But how well does it generalize beyond Seattle? Does it reflect book sales? And what can it tell us about readers more broadly?
In this paper, we introduce SPL\’s checkout data and evaluate its potential for humanistic and literary research. We specifically assess how well it: (1) corresponds with book sales, (2) and extrapolates to library checkout patterns elsewhere nationally. First, we compare SPL data against publishing revenue reports and prior research with access to sales figures. We find that SPL patrons embrace digital books more than general consumers, but the overall distribution of checkouts resembles broader book sales patterns. Second, we compare SPL\’s most checked out books per year to the New York Public Library\’s annual top 10 lists. We find general overlap, but also distinct regional preferences, suggesting geographic extrapolation should be approached with caution. We conclude that SPL\’s checkout data provides a rare window into library circulation and reading habits, with granular, time-series insights. However, its generalizability\—particularly across regions and in relation to book sales\—remains uncertain.},
 author = {Gupta, Neel and Christensen, David and Walsh, Melanie},
 doi = {10.5334/johd.332},
 journal = {Journal of Open Humanities Data},
 keyword = {en_US},
 month = {Aug},
 title = {Seattle Public Library’s Open Checkout Data: What Can It Tell Us About Readers and Book Popularity More Broadly?},
 year = {2025}
}
```


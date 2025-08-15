# Seattle-Public-Library-Library-Checkout-Data
This is the repository with code for our paper [DOI: 10.5334/johd.332]("Seattle Public Library’s Open Checkout Data: What Can It Tell Us About Readers and Book Popularity More Broadly?").'

## Introduction

The paper introduces the [https://data.seattle.gov/Community-and-Culture/Checkouts-by-Title/tmmm-ytt6/about_data](SPL Checkouts by Title) data as a powrful, granular resource for researchers interested in studying book popularity and readership. We discuss dataset particularities and run convergent validity tests to understand how the checkout data functions as a proxy for national readership and book sales.

We conclude that SPL’s checkout data provides a rare window into library circulation and reading habits, with granular, time-series insights. However, its generalizability—particularly across regions and in relation to book sales—remains uncertain and researchers should be cautious with extrapolation without justification. 

## Data and Code
The live, updated data stream through the [https://data.seattle.gov/Community-and-Culture/Checkouts-by-Title/tmmm-ytt6/about_data] (Socrata API) is the best source for up to date library checkout data. In this repository we provide the script `Month_Loop_SPL.R` to help other researchers access the data. 

We've also uploaded a static copy of the data used to source the numebrs and results in our paper on [https://zenodo.org/records/15792698](Zenodo). Our results can be replicated by using the Zenodo data and working with our notebook labelled `SPL_Checkout_Analysis.ipynb.` 





# communities-and-crime
Herein is a decision tree analysis of the Communities and Crime dataset from
the UCI Machine Learning Repository. For reference, the original dataset can be
found here:

http://archive.ics.uci.edu/ml/datasets/communities+and+crime+unnormalized

I added headers to the CSV-formatted data by taking the .arff header from
`community.names` and patching it in with Vim commands; as such, there is no
code that recreates this change, but it's very easy to achieve anyway. The
raw data are then in `raw.csv`. There is a pipeline that needs to be followed
to get the data into a state where it is useful:

1. `Rscript clean.R`
2. `Rscript impute.R`
3. `Rscript learn.R`

The first two will throw away some useless or unwanted content and impute the
mean to any missing values, of which there are few. You may notice that there's
an `explore.R` in here and that's what I used to confirm this is the case; you
don't need it to produce results. The latter will actually carry out the
learning process on the transformed data, which predicts number of violent
crimes per 100K persons in a community from a number of predictive variables.
In any case, RMSE of prediction can substantially beat out predicting the mean.
I say "can" because the performance can vary drastically based on the value of
the random number generator seed, something which concerns me and which I am
looking into.  There will also be a nicely formatted diagram of the tree left
behind as `tree.png` for the viewer's convenience.

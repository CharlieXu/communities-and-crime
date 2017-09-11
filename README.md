# communities-and-crime
Herein is a decision tree analysis of the Communities and Crime dataset from the UCI Machine Learning Repository. For reference, the original dataset can be found here:

http://archive.ics.uci.edu/ml/datasets/Communities+and+Crime

I added headers to the CSV-formatted data by taking the .arff header from
`community.names` and patching it in with Vim commands; as such, there is no
code that recreates this change, but it's very easy to achieve anyway. The
raw data are then in `raw.csv`. There is a pipeline that needs to followed to
get the data into a state where it is useful:

1. `Rscript clean.R`
2. `Rscript impute.R`
3. `Rscript learn.R`

The first two will throw away some useless content and impute the mean to any
missing values, of which there are few. You may notice that there's an
`explore.R` in here and that's what I used to confirm this is the case; you
don't need it to produce results. The latter will actually carry out the
learning process on the transformed data, which predicts level of violent
crime in a community from a number of predictive variables. Unfortunately, the
data from which these figures were normalized are not included in the dataset
and, unless I can find some way to recover them, the relations between the
variables have to be seen as semi-qualitative. In any case, RMSE of prediction
substantially beats out predicting the mean and there will be a nicely
formatted diagram of the tree left behind as `tree.png` for the viewer's
convenience.

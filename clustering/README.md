This project focuses on clustering study, and in particular, the well-known k-means method. The associated data file is named as water-treatment.data, and the documentation file for this data set is given in the file named water-treatment-dataDescription.txt. Specifically, there are 527 data items and each of them is a 38-dimensional vector. Please note that each attribute (i.e., dimension) has a different range of the values. Also please note that there are missing values.

Steps followed:

1.	Data Cleaning and Preparation
•	In the data set given, the first element of each is day of the data and rest are attribute values. I am removing the first element for all elements i.e. pointing it to null. 
i.e.waterTreatmentData$V1 = NULL
•	Renaming the column names
•	Here in order to handle the missing values I am using impute.knn package in R i.e. A function to impute missing expression data, using nearest neighbor averaging.
•	Removing the variables with low variability by using caret package.
•	Apply summary function to get statistics summary.
•	Checking the Skewness of the data, some variables are badly skewed.
•	Before applying Clustering applying fastTrack using caret package. It uses the preprocess function to apply Boxcox , Center & scale and imputation all in one go.

2.	Determining the K value
•	I am using Elbow method, Hierarchical clustering and NbClust package.
•	The elbow method maps the within-cluster sum of squares onto the number of possible clusters.
•	Hierarchical clustering is usually used to better understand the structure and relationships in your data and based on them you decide what number of clusters seems appropriate for your purpose. 
•	Also,, I have determined the optimal number of clusters by plotting Hierarchical clustering and also using the package called NbClust.
•	Conclusion: By performing above all, according to majority rule the best number of clusters is 3.

3.	K-means algorithm
•	Validated cluster solutions using clvalid library function.
•	Based on the value of K=3, applied K-means algorithm to the given dataset by using kmeans function.
•	Representing the cluster by plotting it.
•	Printing the output based on Output description file. i.e. “7->1” (“index”->”cluster value”).
4.	PCA and K-means
•	Applied PCA to given dataset and found out the no. of components accounts to 94% i.e. 19 components accounts to 94%
•	Then applied K-means algorithm to reduced data set (i.e. k=3) and observed the output.


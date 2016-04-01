### Introduction

As part of an assigmanet the data from the given set <uri> is used.

### input data
The train and test set from is first merged

Details can be found in the original descriptions.

Original data structure was as follows:

UCI HAR Dataset
  README
  activity_labels : Links the class labels with their activity name
  features        : List of all features
  features_info   : information about the variables used on the feature vector
  |
  +--- train(ing)
  |      |
  |      +- Inertial signals
  |      |       |
  |      |       +- body_acc_x_train.txt   : body acceleration : total - gravity in X Axis in 'g'.
  |      |       +- body_acc_y_train.txt   : body acceleration : total - gravity in Y Axis in 'g'.
  |      |       +- body_acc_z_train.txt   : body acceleration : total - gravity in Z Axis in 'g'.
  |      |       +- body_gyro_x_train.txt  : angular velocity vector in X Axis in  radians/second.
  |      |       +- body_gyro_y_train.txt  : angular velocity vector in Y Axis in  radians/second.
  |      |       +- body_gyro_z_train.txt  : angular velocity vector in Z Axis in  radians/second.
  |      |       +- total_acc_x_train.txt  : acceleration signal from the smartphone accelerometer X axis in 'g'.
  |      |       +- total_acc_y_train.txt  : acceleration signal from the smartphone accelerometer Y axis in 'g'.
  |      |       +- total_acc_z_train.txt  : acceleration signal from the smartphone accelerometer Z axis in 'g'.
  |      |  
  |      +- subject_train : each row identifies the subject who performed the activity for each window sample.
  |      +- X_train       : dataset for traning
  |      +- y_train       : labels
  |
  +--- test
         |
		 equivalent to training.

The original dataset is merged into one datafile.
Note that for the assignemnt only the mean and standard deviation had to be extracted, all other data was dropped.


Merged structure

In the merged dataset only the processed data is used; all raw measurements (data in the inertial signals) was dropped.

I.e. merged: subject_train, X_train, y_train and the test equivalents.


Resulting in one table
subject, activity, features (561)

### Cleaning steps
Removed all columns except for the subject activity and all with a mean or standard deviation.




All clooumns except mean and standard deviation were dropped.


mean(): Mean value
std(): Standard deviation



Each variable forms a column.
Each observation forms a row.
Each type of observational unit forms a table.



Codebook





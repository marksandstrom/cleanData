# The code book for the script run_analysis.R:

## Tidy data variables names and brief definitions of their purpose:

Please review first the brief README.md in this repo, including the Notes, in particular Note [3], at its end, as well as the preceding sections refering to these Notes.

### Names:

The variable naming in the tidy data "averages.txt" matches with the (mean and standard deviation related) variable naming in features_info.txt and features.txt included with the source data packages.

In addition, the first two columns ("activity" and "subjectId") in "averages.txt" identify the activity type (e.g. walking, standing, sitting..) and the volunteer person by ID number for the remaining columns of a given row of observations (specifically, of averaged mean and std variables for the given combination of activity and subject).

### Definitions:

Besides the first two columns "averages.txt" as defined above (along with as detailed through the local README.md and the references therein, including to the contents in the source data package), the definitions of the actual observation column variables in "averages.txt" also match the similarly named variable definitions in the features_info.txt (included with the source data) -- with the difference that in "averages.txt" the values for these columns (or identical names as per features_info.txt and features.txt) are the corresponding averages for the activity type and the subject ID specified by the values on the first two columns of a given row.

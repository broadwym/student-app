# student-app
The **student-app** data visualization is a simple app built with [R Shiny](https://shiny.rstudio.com/). This app analyzes 1,000 students' high school GPA, SAT scores, and first year of university GPA. The raw data is availble via [OpenIntro Statistics](https://www.openintro.org/stat/extras.php).  

## Run the application
Execute the following commands in R to install the app's required libraries. 
```
install.packages("shiny")
install.packages("magrittr")
install.packages("ggplot2")
```
## Data pre-processing
I cleaned the data by using gsub() to transform "1" to "Male" and "2" to "Female." 

## Reading in data
I read my data in via RStudio's "Import Dataset." I've defined my dataset in the script as satGPA = satGPA as a placeholder. If you read in your data differently, make sure to define the dataframe. 

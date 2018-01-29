# student-app
The **student-app** data visualization is a simple app built with [R Shiny](https://shiny.rstudio.com/). This app analyzes 1,000 students' high school GPA, SAT scores, and first year of university GPA. The raw data is availble via [OpenIntro Statistics](https://www.openintro.org/stat/extras.php).  

![Alt Text](https://media.giphy.com/media/3o752ljXAza6grWSEo/giphy.gif)

## Run the application
Execute the following commands in R to install the app's required libraries. 
```
install.packages("shiny")
install.packages("magrittr")
install.packages("ggplot2")
```
## Data pre-processing
I cleaned the data by using gsub() to transform "1" to "Male" and "2" to "Female." 

## Workshop: Take SAT app apart, rebuild 
### Step 1: Create a blank app 
1. Open a new .R script 
2. Copy paste the script from Pastebin [here](https://pastebin.com/zGq4Rqib).
3. Run script 
4. Try adding the following script to the UI: 
```
titlePanel("Congratulations, you've created a new app!")
```
### Step 2: Value of panels 
1. Erase script
2. Copy paste new script from Pastebin [here](https://pastebin.com/mBUJnkSF)
3. Run script 
4. If you're familar with HTML5, try experimenting with font in the UI:
```
mainPanel(
      h2("main panel")) 
```
### Step 3: Introduce widgets, complete UI 
1. Erase script
2. Copy paste new script from Pastebin [here](https://pastebin.com/1Evnjktr) 
3. Run script
5. Defer back to original SAT Shiny app. Try adding two additional selectInput() widgets to the UI. 
6. Fill in the appropriate labels and make sure to change textOutput to plotOutput. This will render your renderText function useless, but we'll change that later. Your completed UI should look like [this](https://pastebin.com/pUXm2kas). 

Resource: [Widget gallery](https://shiny.rstudio.com/gallery/widget-gallery.html) 

### Step 4: Complete server: reactive expressions and if/else statements 
1. Erase script
2. Copy paste new script from Pastebin [here](https://pastebin.com/pkYFnwKs)
3. Defer back to original SAT Shiny app. **Remember**: what you input in the UI must have an output in the server. 
4. Run script 
5. Congratulations! You've created your first app. 

Resources: [Reactive expressions](https://shiny.rstudio.com/tutorial/written-tutorial/lesson6/) 

[Chained if/else statements](http://www.dummies.com/programming/r/how-to-chain-ifelse-statements-in-r/)

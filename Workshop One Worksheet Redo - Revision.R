# BIO319 Workshop 1 Script Redo
# Sammi Zhou
# 12.02.2024

# Section 1 - Jumping back into R
# R follows the BODMAS rule
1 + 3 * 10
# It will do 3 x 10 first before adding the 1

# Section 2 - Creating variables in R
# The use of the <- symbol is to store a certain value or character to a variable
x <- 10
y <- 20
z <- 'thirty'
# 10 is a value and 'thirty' is a character

# Question 0.1 - Try multiplying x by y
x * y #x is 10 and y is 20, so it means 20 x 10 is 200
# If we try dividing x by z, however, we get an error message
x/z
# The message is 'Error in x/z: non-numeric argument to binary operator'

# Section 3 - Data Classes
# Variables in R can take the form of several classes - Numberic, Character and logical
# Mathematical operators such as those used above tend to only work on numeric data, hence the error message from above
# Check whether your variable is numeric using the 'is.numeric()' function
# Can use the 'class()' function on any variable to check what class the data are
# Can create a logical variables using either TRUE or FALSE
a <- TRUE
b <- FALSE

# Can ask R to see if a logical statement is TRUE or FALSE
1 < 2 # This would be TRUE
1 > 2 # This would be FALSE

# Can also use R to evaluate logical statements containing variables
x > y # This would be false since x is 10 and y is 20 making y bigger than x and not the other way around

# Other types of logical operators are:
# <
# >
# <= - is less than or equal to
# >= - is greater than or equal to
# = - is equal to
# != - is not equal to

# & is 'and' and | is 'or'
1 < 2 & 1 > 0 # This would be true since 2 is greater than 1 and 1 is greater than 0
# If other are TRUE it will come back as TRUE, but if once of them is FALSE, it will come back as FALSE

# Question 0.2 - Do the same expression with the | instead of &
1 < 2 | 1 > 0 # This would come back as TRUE because of the same reasons above

# Section 4 - Question time
# Section 4.1 - Questions without R

# Question 1 - What will R return if you input the expression 7 >= 6?
# R would return that it would be TRUE

# Question 2 - What would the value of x be if you ran the following code?
x <- 12 / 3 > 3 & 5 ^ 2 < 25
# R would return the string of code to be FALSE because of the second section

#Question 3 - What would the value of y be if you ran the following code?
y <- 12 / 3 > 3 | 5 ^ 2 < 25 | 1 == 2
# R would return the string of code to be TRUE

# Question 4 - What would R return if you ran the following code?
z <- FALSE
z == TRUE
# R would return as FALSE because z has been assigned as FALSE, so regardles if it's ==, it is still FALSE

# Section 4.2 - Challenge time
# Question 5 - Make an object with the value 'The cake' and another with the value 'A lie'. Create a logical expression to test whether these two values are the same.
a <- 'The Cake'
b <- 'The Lie'
a == b # This would come back as FASLE because they are not the same, but this is the logical statement needed for the question

# Question 6 - Make a logical expression that tests whether your first name is greater than or equal to 6 letters long. Use Google to find a function that returns the length of a string!
nchar('Sammi') >= 6 # This would come back as FALSE since my name only has 5 letters than 6
# nchar() is a function, where you can use to count the number of character of a word
nchar('Sammi') < 6 & 'Sammi' != 'James' & 'Joe' != 'Janelle' & 'Sammi' != 'Jessica'
# So what I have to do is say that my name is less than 6 letters, then repated my name for each statement to stay my names are not the others using the != (not equal to)
# The & symbol is to stay all these names are not mine

# Section 5 - Scalars, Vectors and Matrices
# Classes of objects - Numberic, Character, Logical
# Object types - Scalars and vectors
# Scalars - Contain single value
x <- 1 
# Vector - Contains multiple values

# Section 5.1 - Creating vectors with c()
# C() - Create vectors by combining elements
x <- c(1, 2, 3, 4)
y <- c(FALSE, TRUE, FALSE, TRUE, FALSE)
z <- c('I', 'got', 'the', 'right', 'temperature', 'to', 'shelter', 'you', 'from', 'the', 'storm')

class(x) # X is numberic
class(y) # Y is logical
class(z) # Z is character

# rep() - Use to repeat a vector or scalar multiple times
rep(x = c(1, 2, 3), times = 3)

# Question 0.3 - Try using the rep() function to create a vector 100 elements long that repeats the words 'I', 'will', 'not', 'tell', 'lies'
lines <- rep(c('I','will','not','tell','lies'), times = 20)
# The reason why it is 20 is because each word would add up to 100 overall

# Question 0.4 - Try using the rep() function to create a vector that repeats 'a' 5 times, then 'b' 5 times, then 'c' 5 times.
lines <- rep(c('a','b','c'), each = 5)
# The difference this time is that 'times' is changed to 'each' - so each letter will repeart 5 times

# Section 5.2 - Creating vectors with seq()
# seq() - Invaluable function that creates numberic sequences - create a series of numbers between two values
seq(from = 1, to = 10) 
seq(from = 10, to = -2)
seq(from = 1, to = 101, by = 10)
seq(from = 10, to = 15, by = 0.5)

# Question 0.5 - What are the different arguments in the seq() function used for?
# The start, the end, and increments. Other arguments can be specified, see ?seq()

# Using the seq() function, make a vector of the measurements on a 15cm ruler (including the millimetre measures) with cm as the unit
ruler <- seq(from = 0, to = 15, by = 0.1)
# Basically we want to go from 0 to 15 and mm is by 0.1, so we want to from 0-15 by 0.1 increments

# Section 5.3 - ‘:’ and subscripting
# : - Shorthand way to create a sequence of numbers - creates a sequence of the integers between the values specified
1:3
3:9
12:-2

# Can subscript using square brackets [] after our object
x <- c('a', 'b', 'd', 'e', 'f', 'g', 'h')
# We can than use integar positions to ask for a specific element we cant
x[1] # This will come back as A
x[3:5] # This will come back as d, e, f
x[5:3] # Basically the other code by comes back backwards
x[seq(from = 1, to = 5, by = 2)] # Comes back as a, d and f, because we are jumping by 2 from a,b,d,e,f because we want it to 1-5

# Can also subscript vectors (and matrices and dataframes) using logical statements
x <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 8, 7, 6, 5, 4, 3, 2, 1)
x > 5
# This basically is saying which integar of the code is bigger than 5

y <- x[x > 5]
print(y)
# Can see that by running x > 5 R returns a vector of logical data indicating whether the individual elements are greater than 5 or not

# Question 0.6 - Create a vector containing the numbers 2 through 15. Subscript this vector to make a new vector only containing numbers less than or equal to 7
x <- c(2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15)
x< 2:15
y <- x[x <= 7]
print(y)

# Question 0.7 - Using the %% operator, subscript your vector to only contain values that are a multiple of 3
z <- y[y %% 3 == 0]
# Basically, %% is returning the modulus/remainders of a divsion operation

# Section 5.4 - Matrices
# By increasing the dimensionality of our object one more time we move a linear vector, to a two-dimensional matrix
# matrix() - To create a matrix()
mat1.data <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)
mat1 <- matrix(mat1.data,
               nrow = 3, # Basiscally the amount of rows
               ncol = 3, # Basucally the amount of columns
               byrow = TRUE)
mat1

# Question 0.8 - Copy the above code into your R script and change the byrow argument to FALSE. What has changed about your matrix?
mat1.data <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)
mat1 <- matrix(mat1.data,
               nrow = 3,
               ncol = 3,
               byrow = FALSE)
mat1
# The data should fill the matrix by column rather than by row

# Question 0.9 - Create a matrix of the first 12 letters of the alphabet that has 3 rows and 4 columns. The first column should contain 'a','b','c'
mat2.data <- c('a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l')
mat2 <- matrix(mat2.data,
               nrow = 3,
               ncol = 4,
               byrow = FALSE)
mat2

# With matrices we need to use two numbers rather than one in the square brackets, as there are two dimensions to the object
# The first number is the row, and the second is the column (separated by a comma!) like mat1[1,3] - gives me the first element of the 3 column
# Equally, leaving a one side of the comma blank returns all rows or columns like mat1[1:3,] - Returns the first, second and third rows of each column


# Question 1.0 - Use subscripting to return the 3rd element of the 4th column of your alphabet matrix
mat2[3,4]

# Question 1.1 - Use subscripting to return the 2nd AND 3rd rows of the 1st column of your alphabet matrix
mat2[2:3, 1]

# Question 1.2 - Use subscripting to return all the elements EXCEPT those in the 1st row of your alphabet matrix.
mat2[-1,] or it could be mat2[2:3,]

# Section 6 - The Dataframe
# Section 6.1 - The basics
# The most commonly used data structure in data science in R is the dataframe
# When we read in the data we are describing/visualising/analysing in our scripts, they will be dataframes
# In a matrix, all the data are of one class, meaning that you cannot have one column of logical data (TRUE or FALSE), with another of numeric data
# In a dataframe, on the other hand, our columns can all be different classes

# Question 1.3 - Read the NYTBestsellers.csv dataset into R using the read.csv() function. Remember you have to assign the dataframe to a variable.
df <- read.csv("NYTBestsellers.csv") # Read.cvs(") is used to read a dataset

# Question 1.4 - Check the structure of the dataframe. You may need to google how to do that.
str(df)
# str() - Displays the internal structure of an object such as an array, list, matrix, factor, or data frame

# We can subscript data in a dataframe in the same way as a matrix
df <- read.csv('NYTBestsellers.csv')
df[1:3, 2:5]

# Question 1.5 - Try getting the information from row 3 using a subscript.
row3 <- df[3,]
row3

# Question 1.6 - Try using the subscript [1:5, 'title'] to access the first five elements of the title column.
first_five <- df[1:5, 'title']

# Section 6.2 - The $
# $ - An additional way to refer to columns in a dataframe
# If your dataframe were saved as an object df and you wanted to use the number of weeks to produce a histogram of the total weeks 
hist(df$total_weeks)
# Subscript a single column using the square brackets
df[1:5, 'title'] # Will produce the same output as running df$title[1:5]
# Can create new columns in a dataframe by referencing column names that do not exist yet
# For example we can create a new column called personal_rating and filling it with the term ‘brilliant’ using the following code: df$personal_rating <- rep('brilliant', times = nrow(df))
df$personal_rating <- rep('brilliant', times = nrow(df))

# Question 1.7 - Try creating your own new column called ‘number_of_pages’ that creates a column with 100 for the first 20 books, 200 for the next 20 and so on until the last 20 books are 500
df$number_of_pages <- rep( c( 100, 200, 300, 400, 500), each = 20)

# Question 1.8 - Adapt your previous answer to make use of the seq() function to create the input for the rep() function
df$number_of_pages <- rep( seq( 100, 500, by = 100), each = 20)

# Section 7 - Question Time 2
# Question 8 - What type and class are each of objects x, y and z in the following code:
w <- 'melanogaster' # Character 
x <- 1:12 # Numberic
y <- FALSE # Logical
z <- x + 1 # Numberic

# Question 9 -  Create a vector of every even number between 1 and 100.
vec <- seq( 2, 100, by = 2)

# Question 10 -  Create a vector of all the odd numbers between 1000 and 1500 that are divisible by 7
vec <- seq( 1001, 1500, by = 2)
vec <- vec[vec %% 7 == 0]

# Question 11 - Using the NYT bestseller data, create a vector of the names all the books that were in the top spot for at least 10 weeks
best10 <- df$title[df$total_weeks >= 10]

# Question 12 - Using the NYT bestseller data, create a new dataframe where all the books were in the top spot for less than 10 weeks and have titles that are less than 15 characters long
shortdf <- df[ df$total_weeks >= 10 & nchar(df$title) < 15, ]

# Question 13 - Add a new column to your dataframe called ‘long10’ that contains the word ‘yes’ if the book title is 10 characters long, and ‘no’ if it is not.
shortdf$long10 <- 'yes'
shortdf$long10[nchar(shortdf$title) != 10] <- 'no'

# Question 14 - Using subscripting, update your editted dataframe to only contain the ‘title’, ‘author’, ‘year’ and ‘long10’ columns
finaldf <- shortdf[ , c('title', 'author', 'year', 'long10')]














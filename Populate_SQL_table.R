# Using a for loop to generate a text
# This is a demonstration of how iteration (loops) can be used to perform repeated operations
# The following for loop will print SQL's INSERT INTO statement with unique value for `ID` attribute

for (i in 1:5) {
    cat("\nINSERT INTO BUYERS  ( ID, NAME, DOB ) # As ID shall be unique, we use iteration
  VALUES (",i,",'DINESH', '1991-09-13');") # You can also randomly generate Name and Date (Not required for now)
}

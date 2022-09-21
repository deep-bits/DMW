for (i in 1:500) {
  cat("\nINSERT INTO BUYERS  ( ID, NAME, DOB )
  VALUES (", i, ", 'DINESH', '1991-09-13');")
}

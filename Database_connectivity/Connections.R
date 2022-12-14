# install.packages("RMySQL")
# install.packages("getPass")
library(RMySQL)
library(getPass)

# Connection to MySQL -------------------------------------------------------------------------

rm(list=ls())
pwd <- getPass()
mysqlconnection <-  dbConnect(MySQL(), user = 'root', password = pwd,
                    dbname = 'e_shopping', host = 'localhost')
dbListTables(mysqlconnection) # List of tables
SQL_output <- dbSendQuery(mysqlconnection,
                "select *
                from saarc")

# Connecting MySQL to R -----------------------------------------------------------------------

countries <- fetch(SQL_output) # Create SQL output as R object
print(countries)
noquote(countries[3,1])

dbSendQuery(mysqlconnection,
  "create table my_fav
  (
    countries varchar(20)
  )
")
dbSendQuery(mysqlconnection,
    "INSERT INTO my_fav values ('NEPAL')")
output <- dbSendQuery(mysqlconnection,
    "select * from my_fav")
sql_output <- fetch(output)
print(sql_output)

my_fav <- as.data.frame(c("INDIA","BHUTAN","NEPAL","SRI LANKA"))
colnames(my_fav) <- "Countries"
dbSendQuery(mysqlconnection, "SET GLOBAL local_infile = true;")
dbWriteTable(mysqlconnection, "my_fav", my_fav, overwrite = TRUE)

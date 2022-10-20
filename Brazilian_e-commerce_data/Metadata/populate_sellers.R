data <- read.csv(file = "olist_sellers_dataset.csv", header = TRUE, sep = ',')
for (i in 1:nrow(data)){
    s_id <-    data[i,1]
    s_zip <-   data[i,2]
    s_city <-  data[i,3]
    s_state <- data[i,4]
    values <- paste0('"',s_id,'",', s_zip,',"', s_city,'",', '"',s_state,'"')
    cat("\nINSERT INTO SELLERS (seller_id,seller_zip_code_prefix,seller_city,seller_state) VALUES (",values,");",file = "populate_sellers.sql",append = TRUE)
}

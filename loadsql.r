library(RMySQL)

get_ds <- function(name) {
	   con <- dbConnect(
			MySQL(), 
			user=Sys.getenv("DBUSER"), 
			password=Sys.getenv("DBPASS"), 
			db=Sys.getenv("DBNAME")
			)
	   dbReadTable(con, name)
}

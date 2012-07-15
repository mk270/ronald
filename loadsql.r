library(RMySQL)

# this doesn't tidy up its connection handle yet
get_ds <- function(name) {
	   con <- dbConnect(
			MySQL(), 
			user=Sys.getenv("DBUSER"), 
			password=Sys.getenv("DBPASS"), 
			db=Sys.getenv("DBNAME")
			)
	   dbReadTable(con, name)
}

merged <- function(ds1, ds2, field_name) {
	   merge(get_ds(ds1), get_ds(ds2), by=field_name)
}

lm_merged <- function(frame, c1, c2) {
		  lm(frame[c(c1, c2)])
}

# You need to set $DBPASS $DBUSER and $DBNAME in the environment, or
# set them below; you can set them in the environment by putting them
# in the ../local_settings file

# DBPASS := passw1234
# DBUSER := e2e_user
# DBNAME := e2e_test

SRCS    := $(wildcard *.csv)
SCHEMAS := $(patsubst %.csv,%.schema,$(SRCS))
SQLS    := $(patsubst %.csv,%.sql,$(SRCS))
STAMPS  := $(patsubst %.csv,%.stamp,$(SRCS))
DIALECTS:= $(patsubst %.csv,%.dlc,$(SRCS))

all: $(STAMPS)

%.schema: %.csv
	../bin/csv2schema -d $$(basename $< .csv).dlc $< > $@

%.sql: %.schema
	../bin/schema2tabledef $$(basename $< .schema) < $< > $@

%.stamp: %.sql
	../bin/load -u $(DBUSER) -p $(DBPASS) -d $(DBNAME) -t $$(basename $< .sql)
	touch $@

clean:
	rm -f -- $(SCHEMAS) $(SQLS) $(SRCS) $(STAMPS) $(DIALECTS)

.ROBUST: $(SCHEMAS) $(SQLS) $(SRCS) $(DIALECTS)


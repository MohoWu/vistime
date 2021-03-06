# GOAL: NO GROUPS

# 1. data
crono <- read.csv(text="Name,Group,start_year,end_year
First long period,long,1800-01-01,1899-12-31
Second period,short,1870-01-01,1910-12-31
Another long period,long,1900-01-01,1990-12-31
More events on period time,short,1965-01-01,1985-12-31")
events <- read.csv(text="Name,start_year
Person 1 was born,1870-01-01
Person 1 first novel,1895-01-01
Build the new building,1905-01-01
Death person 1,1930-01-01
renovation building,1950-01-01
collection,1970-01-01")
crono <- sapply(crono, as.character)
events$end_year <- NA
events$Group<-c(1,2,1,2,1,2)
events <- sapply(events, as.character)
origData<-rbind(crono, events[, c(1,4,2,3)])

#2. standard parameters
col.event="event"
col.start="start"
col.end="end"
col.group="group"
col.color="color"
col.fontcolor="fontcolor"
col.tooltip="tooltip"
title=NULL

# 3. function call
# vistime(origData,col.event="Name", col.start="start_year", col.end ="end_year")
col.event="Name"
col.start="start_year"
col.end="end_year"
gg_vistime(origData,col.event="Name", col.start="start_year", col.end ="end_year", col.group = "Group")
hc_vistime(origData,col.event="Name", col.start="start_year", col.end ="end_year", col.group = "Group")

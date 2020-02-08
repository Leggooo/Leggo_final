options(skip =1)  
load data
infile 'C:\Users\ahnus\Documents\leggo_data\parkingtime.csv'  
append   
into table parking_time  
fields terminated by ','
trailing nullcols
(
 parking_code,
 weekday_begin_time,
 weekday_end_time,
 weekend_begin_time,
 weekend_end_time,
 holiday_begin_time,
 holiday_end_time,
 sync_time
)
options(skip =1)  
load data
infile 'C:\dbparking\parking_time\parkingtime.csv'  
append   
into table parking_time  
fields terminated by ','
trailing nullcols
(
 parking_code,

)
options(skip =1)  
load data
infile 'C:\dbparking\parking_seats\parkingseats.csv'  
append   
into table parking_seats  
fields terminated by ','
trailing nullcols
(
 PARKING_CODE,
 QUE_STATUS,
 QUE_STATUS_NM,
 CAPACITY,
 CUR_PARKING,
 CUR_PARKING_TIME
)
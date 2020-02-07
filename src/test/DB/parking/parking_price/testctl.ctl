options(skip =1)  
load data
infile 'C:\dbparking\parking_price\parkingprice.csv'  
append   
into table parking_price  
fields terminated by ','
trailing nullcols
(
 parking_code,
)
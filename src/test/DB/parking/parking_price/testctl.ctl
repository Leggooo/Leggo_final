options(skip =1)  
load data
infile 'C:\Users\ahnus\Documents\leggo_data\parkingprice.csv'  
append   
into table parking_price  
fields terminated by ','
trailing nullcols
(
 parking_code,
 pay_yn,
 pay_nm,
 night_free_open,
 Saturday_pay_yn,
 Saturday_pay_nm,
 holiday_pay_yn,
 holiday_pay_nm,
 rates,
 add_rate,
 add_time_rate,
 bus_rates,
 bus_add_rates,
 bus_time_rate,
 bus_add_time_rate
)
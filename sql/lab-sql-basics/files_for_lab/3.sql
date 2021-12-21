select * from bank;


select date,convert(date,date) as converted_date from bank.loan;


select substring_index(issued,' ',1) as issued_date from bank.card;



select date_format(convert(date,date), '%Y-%M-%D') as format_1,
date_format(convert(date,date), '%D-%M-%Y') as format_2,
date_format(convert(date,date), '%Y')as format_3
from bank.loan;card


-- Get card_id and year_issued for all gold cards.

-- When was the first gold card issued? (Year)

-- Get issue date as:

-- date_issued: 'November 7th, 1993'
-- fecha_emision: '07 of November of 1993'


select card_id,EXTRACT year from issued from card
where type='gold';cardlength









card
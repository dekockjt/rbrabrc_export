-- scan rules for issues with regex

-- find instances of wrong argument order in f_calc_stud_bill_hrs calls (pidm passed before period)
select *
from rbrabrc
where regexp_like(rbrabrc_sql_statement, 'F_CALC_STUD_BILL_HRS\s*\(\s*[^,]*pidm[^,]*,', 'i');
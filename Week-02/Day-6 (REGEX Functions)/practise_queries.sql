-- Q1. Extract numeric characters from mixed_value that appear at the very beginning
SELECT mixed_value, REGEXP_SUBSTR(mixed_value,'^[0-9]+') AS result FROM regex_practice;

-- Q2. Extract numeric characters from mixed_value that appear at the very end
SELECT mixed_value, REGEXP_SUBSTR(mixed_value,'[0-9]+$') AS result FROM regex_practice;

-- Q3. Extract only the first single character of mixed_value
SELECT mixed_value, REGEXP_SUBSTR(mixed_value,'^.') AS result FROM regex_practice;

-- Q4. Extract only the last single character of mixed_value
SELECT mixed_value, REGEXP_SUBSTR(mixed_value,'.$') AS result FROM regex_practice;

-- Q5. Extract exactly two consecutive numeric characters anywhere in mixed_value
SELECT mixed_value, REGEXP_SUBSTR(mixed_value,'[0-9]{2}') AS result FROM regex_practice;

-- Q6. Extract exactly one numeric character anywhere in mixed_value
SELECT mixed_value, REGEXP_SUBSTR(mixed_value,'[0-9]') AS result FROM regex_practice;

-- Q7. Extract country code from the beginning of phone
SELECT phone, REGEXP_SUBSTR(phone,'[0-9]+') AS result FROM regex_practice;

-- Q8. Extract numeric portion present between alphabetic characters
SELECT mixed_value, REGEXP_SUBSTR(mixed_value,'[0-9]+') AS result FROM regex_practice;

-- Q9. Extract text before @ symbol from email
SELECT email, REGEXP_SUBSTR(email,'^[^@]+') AS result FROM regex_practice;

-- Q10. Extract text after @ symbol including domain
SELECT email, REGEXP_SUBSTR(email,'(?<=@).*') AS result FROM regex_practice;

-- Q11. Extract only domain name without @ symbol
SELECT email, REGEXP_SUBSTR(email,'[^@]+$') AS result FROM regex_practice;

-- Q12. Extract text after the last dot in email
SELECT email, REGEXP_SUBSTR(email,'[^.]+$') AS result FROM regex_practice;

-- Q13. Extract continuous alphabetic sequence from mixed_value
SELECT mixed_value, REGEXP_SUBSTR(mixed_value,'[A-Za-z]+') AS result FROM regex_practice;

-- Q14. Extract continuous numeric sequence from mixed_value
SELECT mixed_value, REGEXP_SUBSTR(mixed_value,'[0-9]+') AS result FROM regex_practice;

-- Q15. Extract exactly first three characters from full_text
SELECT full_text, REGEXP_SUBSTR(full_text,'^...') AS result FROM regex_practice;

-- Q16. Extract exactly last two characters from full_text
SELECT full_text, REGEXP_SUBSTR(full_text,'..$') AS result FROM regex_practice;

-- Q17. Extract employee number between alphabetic prefix and first underscore
SELECT full_text, REGEXP_SUBSTR(full_text,'[0-9]+') AS result FROM regex_practice;
 
-- Q18. Extract country code at the end of full_text
SELECT full_text, REGEXP_SUBSTR(full_text,'[0-9]+$') AS result FROM regex_practice;

-- Q19. Extract alphabetic text between two underscores
SELECT full_text, REGEXP_SUBSTR(full_text,'(?<=_)[A-Za-z]+(?=_)') AS result FROM regex_practice;

-- Q20. Extract digits immediately after + sign in phone
SELECT phone, REGEXP_SUBSTR(phone,'(?<=\\+)[0-9]+') AS result FROM regex_practice;
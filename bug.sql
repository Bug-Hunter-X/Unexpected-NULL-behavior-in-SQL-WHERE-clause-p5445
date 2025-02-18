```sql
SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000;
```

This query might seem straightforward, but it can lead to unexpected results if the `salary` column allows NULL values.  If an employee in the Sales department has a NULL salary, that employee will be excluded from the results, even though they technically meet the department requirement.

The issue is that SQL treats NULL values differently from 0 or any other number.  Comparisons involving NULL values result in UNKNOWN (not TRUE or FALSE), which is considered equivalent to FALSE in WHERE clauses.
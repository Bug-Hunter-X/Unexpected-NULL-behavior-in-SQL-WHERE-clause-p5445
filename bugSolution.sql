```sql
SELECT * FROM employees WHERE department = 'Sales' AND (salary > 100000 OR salary IS NULL);
```

This corrected query uses the `OR salary IS NULL` condition to include employees with NULL salaries in the results.  Alternatively, if you only want employees with non-NULL salaries exceeding 100000, you can use:

```sql
SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000 AND salary IS NOT NULL;
```
This explicitly excludes employees with NULL salaries.
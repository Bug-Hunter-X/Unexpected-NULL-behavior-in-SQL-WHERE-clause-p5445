# SQL NULL Handling in WHERE Clauses

This repository demonstrates a common SQL error related to NULL values in WHERE clauses.  A seemingly simple query to filter employees based on department and salary can produce incorrect results if NULL salaries are not handled correctly.  The `bug.sql` file contains the erroneous query, while `bugSolution.sql` provides the corrected version.

The problem arises because SQL's three-valued logic treats NULL values differently from other values.  A comparison involving a NULL value evaluates to UNKNOWN, which is treated as FALSE in a WHERE clause. This causes rows with NULL salaries to be excluded from the results, even if they match other criteria.

The solution involves using the `IS NULL` or `IS NOT NULL` operators to explicitly check for NULL values.
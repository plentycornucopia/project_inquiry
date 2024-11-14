# budget_project
Budget Project

We need to store all inquiries on our personal budget from month to month. We want to store them in a Postgress DB with the following column structure:
- Reference #: (which will always be present)
- Report Date: (which will always be present)


- Creditor Name:
- Type of Business: (may sometimes be blank)
- Date of Inquiry:
- Credit Bureau:

- From month to month we will not know how many inquiries we'll have. Could be 1. Could 30. Could be 0.
- If 0 no record should be created. If 1+, then create a corresponding record in the DB.

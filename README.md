# Project: Inquiry
Project: Inquiry

We need to store all inquiry records on our personal budget from month to month. We want to store them in a Postgres DB with the following column structure:

|Reference|Report Date|Creditor Name|Type of Business|Date of Inquiry|Credit Bureau|
| :---------------- | :------: | ----: | ----: | ----: | ----: |
|*VARCHAR(9)|*MM/DD/YYYY|VARCHAR(255)|**VACHAR(255)|MM/DD/YYYY|VARCHAR|

* From month to month we will not know how many inquiry records we'll have. Could be 1. Could 30. Could be 0.
* If 0, no record should be created. If ≤1, then create the corresponding record(s) in the DB.

*must always be present

**may sometimes be blank

***postgres db available upon request

## Data Table Selector
`#Inquiries > table.rpt_content_table.rpt_content_header.rpt_content_contacts.ng-scope`

## Screenshot of Data Table in HTML
![Table Appears in HTML](file%20to%20be%20parsed%20-%20inquiries.png?raw=true "Table Appears in HTML")

## Data Once Inputed to Postgres
|Reference|Report Date|Creditor Name|Type of Business|Date of Inquiry|Credit Bureau|
| :---------------- | :------: | ----: | ----: | ----: | ----: |
|BR54898847|05/23/2024|BRCLYSBANKDE|Commercial Banks|04/03/2024|ChesterPA|
|BR54898847|05/23/2024|SYNCB/AMERICAN EAGLE|Sales Financing|03/28/2024|AllenTX|
|BR54898847|05/23/2024|SYNCB/AEVISA|Bank Credit Cards|03/28/2024|ChesterPA|
|BR54898847|05/23/2024|CAPITALONE|-|03/19/2024|AtlantaGA|
|BR54898847|05/23/2024|CAP ONE NA|Bank Credit Cards|03/19/2024|AllenTX|
|BR54898847|05/23/2024|CAPITAL ONE|Bank Credit Cards|03/19/2024|ChesterPA|
|BR54898847|05/23/2024|CAPITALONE|-|02/11/2024|AtlantaGA|
|BR54898847|05/23/2024|CAP ONE NA|Bank Credit Cards|02/11/2024|AllenTX|
|BR54898847|05/23/2024|CAPITAL ONE|Bank Credit Cards|02/11/2024|ChesterPA|
|BR54898847|05/23/2024|NEBRASKA FURNITURE MAR|Furniture and Home/Office Funishings Stores|12/02/2023|AllenTX|
|BR54898847|05/23/2024|SYNCB|Bank Credit Cards|02/03/2023|ChesterPA|

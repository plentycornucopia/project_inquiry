/* INQUIRIES */				
CREATE TABLE IF NOT EXISTS inquiries (				
ID        SERIAL        ,				
inquiries_ID	VARCHAR(30)	NOT NULL	UNIQUE	,
inquiries_attributes	JSON	NULL		,
inquiries_reference	VARCHAR(30)	NOT NULL		,
inquiries_reportdate	TIMESTAMP	NOT NULL		,
inquiries_creditorname	VARCHAR(255)	NULL		,
inquiries_typeofbusiness	VARCHAR(255)	NULL		
inquiries_dateofinquiry	VARCHAR(255)	NULL		,
inquiries_creditbureau	VARCHAR(255)	NULL		,
				
				
inquiries_access	VARCHAR(30)	NOT NULL	DEFAULT 'public'	,
inquiries_status	VARCHAR(30)	NOT NULL	DEFAULT 'active'	,
user_ID	VARCHAR(30)	NOT NULL		,
app_ID	VARCHAR(30)	NOT NULL		,
event_ID	VARCHAR(30)	NOT NULL		,
process_ID	VARCHAR(30)	NOT NULL		,
time_started	TIMESTAMP	NOT NULL	DEFAULT NOW()	,
time_updated	TIMESTAMP	NOT NULL	DEFAULT NOW()	,
time_finished	TIMESTAMP	NOT NULL	DEFAULT NOW()	,
active	INT	NOT NULL	DEFAULT 1	,
);				
				
SELECT * FROM	inquiries;			
DROP TABLE	inquiries;			
				
CREATE SEQUENCE	inquiries_sequence;			
ALTER SEQUENCE	inquiries_sequence RESTART WITH 8301;			
ALTER TABLE	inquiries ALTER COLUMN ID SET DEFAULT nextval('inquiries_sequence');			
				
ALTER TABLE	ALTER TABLE inquiries ADD FOREIGN KEY (user_ID) REFERENCES user (user_ID);			
ALTER TABLE	ALTER TABLE inquiries ADD FOREIGN KEY (app_ID) REFERENCES app (app_ID);			

INSERT INTO inquiries (
inquiries_ID,
inquiries_attributes,
inquiries_reference,
inquiries_reportdate,
inquiries_creditorname,
inquiries_typeofbusiness,
inquiries_dateofinquiry,
inquiries_creditbureau,
inquiries_access,
inquiries_status,
user_ID,
app_ID,
event_ID,
process_ID,
active
) VALUES (
'score_54663',
'{}',
'30 Characters',
'05/24/2024',
'255 Characters',
'255 Characters',
'255 Characters',
'255 Characters',
'access_54663',
'status_54663',
'user_54663',
'app_54663',
'event_54663',
'process_54663',
1
);

SELECT * FROM inquiries;
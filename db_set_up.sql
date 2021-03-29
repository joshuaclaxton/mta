# Create the DB from command line
sqlite3 mta.db
​
# Create the mta table shell
CREATE TABLE mta_data (
	CA TEXT,
	UNIT TEXT,
	SCP TEXT,
	STATION TEXT,
	LINENAME TEXT,
	DIVISION TEXT,
	DATE TEXT,
	TIME TEXT,
	DESC TEXT,
	ENTRIES INTEGER,
	EXITS INTEGER,
	PRIMARY KEY (CA,UNIT,SCP,STATION,LINENAME,DIVISION,DATE,TIME,DESC,ENTRIES,EXITS)
	);

​
# Try inserting one row of data into the table
INSERT INTO mta_data (
	CA,UNIT,SCP,STATION,LINENAME,DIVISION,DATE,TIME,DESC,ENTRIES,EXITS)
	VALUES ('A002','R051','02-00-00','59 ST','NQR456W','BMT','03/06/2021','03:00:00','REGULAR',0007540642,0002572027);

​
# Try inserting an entire txt file
.mode csv

.import "/Users/joshua.claxton/Documents/Metis_projects/project_1/data/turnstile_210329.txt" mta_data
​
# Command Line code to combine text files of turnstile data
head -1 turnstile_210329.txt > all_combined.csv
tail -n +2 -q *.txt >> all_combined.csv

 
# Load all turnstile data in database table
.import "/Users/joshua.claxton/Documents/Metis_projects/project_1/data/all_combined.csv" mta_data 
​
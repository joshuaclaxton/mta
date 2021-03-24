# Proposal
Question/Purpose
-  How does police presence change depending on the amount foot traffic in MTA stations in Brooklyn? 


For whom
- Public Advocate's Office of NYC, Civil Rights organizations, and/or NYC Mayor/City Council Brooklyn Borough President 

Datasets (April 2019 - September 2019)
- MTA turnstile data from April 2019 - September 2019  
    - pulled using Python
    - The unit of analysis will be a given station in a given month
    - The variables of interest are the control area, station, date, and enter/exit values
- MTA geolocations
    - downloaded from NYC Open Data
    - The unit of analysis will be a given station 
    - The variables of interest are the station and geolocation
- NYPD Arrests Data
    -   downloaded from NYC Open Data
    -   The unit of analysis will be arrests at a given station in a given month
    -   The variables of interest are borough, arrest type, latitude, and longitude

Tools
- I will use SQL to ingest the raw data into a database and query from that database into Python via SQLAlchemy. I will do my exploratory data analysis in Python pandas and my visualization using Python libraries such as seaborn.
- I will visualize the NYPD Arrest Data in QGIS for qualitative comparison and observational analysis with the foot traffic data. 

MVP
- The MVP would consist of identifying the highly frequented stations and then comparing that with qualitative data (ie. from articles) about where arrest are happening most, ignoring the police data and use of QGIS.


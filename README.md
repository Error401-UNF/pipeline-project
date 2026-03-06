# Pipeline Project

Database of choice: PostgreSQL


## Instructions

While using nix to load this is the perfered option, it is by no means required

step 1: set up postgress with the following schemas:
- sources
- staging

step 2: change line 340 to reflect a real user in your database. this ***WILL NOT WORK*** if thats not set properly

step 3: setup python venv with requirements.txt in mind

step 4: Run injestion.py
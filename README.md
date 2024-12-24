# geekup

To start the app:
1. In you root folder (same level as requirement.txt), create a virtual environment. Depends on your system, the code may change slightly (I'm using Debian)
```
python3 -m venv .env
source .env/bin/activate
```
2. Install requirements
```
pip3 install -r requirements.txt
```
3. Go to backend folder (which has manage.py file) and run the project
```
cd backend
python3 manage.py runserver
```

#### NOTE: 
The database has already been deployed using a free cloud service provider so the query may take a bit of time. If you are unable to connect with the database. Do me a favor and go the `setting.py` change the connection back to database in your local and using `geekup_exported_script.sql` to create a database in you machine.


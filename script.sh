pip install -r /app/requirements.txt
/app/manage.py syncdb --noinput
/app/manage.py migrate 

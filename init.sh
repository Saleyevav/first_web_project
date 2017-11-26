sudo ln -s /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
sudo rm -rf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
gunicorn -b 0.0.0.0:8080 --pythonpath /home/box/web/ hello & 
gunicorn -b 0.0.0.0:8000 --pythonpath /home/box/web/ask ask.wsgi:application & 
#sudo ln -s /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/test
#gunicorn -c /etc/gunicorn.d/test hello

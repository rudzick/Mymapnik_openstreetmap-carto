# WSGI module for use with Apache mod_wsgi or gunicorn                          

# # uncomment the following lines for logging                                   
# # create a log.ini with `mapproxy-util create -t log-ini`                     
from logging.config import fileConfig
import os.path
fileConfig(r'/home/renderaccount/Mymapnik_openstreetmap-carto/Mymapproxy/log.ini', {'here': os.path.dirname(__file__)})

from mapproxy.wsgiapp import make_wsgi_app
#application = make_wsgi_app(r'/home/renderaccount/mymapproxy/mapproxy.yaml')   
application = make_wsgi_app(r'/home/renderaccount/Mymapnik_openstreetmap-carto/Mymapproxy/mapproxy.yaml', reloader=True)

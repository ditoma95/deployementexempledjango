
#------Deployement de l'application django--------------------~#
#requis
#image python
#install pip
#install les dépendances du projet


FROM python:3.8-alpine
ENV V=1234
RUN apk update && apk add python3-dev build-base linux-headers pcre-dev git \
	&& git clone https://github.com/amk-7/gestion_contact.git \
	&& cd gestion_contact \
	&& pip install -r requirements.txt

WORKDIR gestion_contact
ENTRYPOINT ["python", "manage.py", "runserver","0.0.0.0:8000"]





#------Deployement de l'application django--------------------~#

#sudo docker build -t django_image .
#sudo docker run -d -p 8001:8000 --name django_app1 django_image

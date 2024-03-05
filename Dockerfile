FROM  tiangolo/uwsgi-nginx-flask:python3.8 
COPY . /app
WORKDIR /app
RUN pip3 install -r requirements.txt
EXPOSE 8084
# RUN apt-get install -y poppler-utils
# RUN pip install 'git+https://github.com/facebookresearch/detectron2.git@v0.4#egg=detectron2'
ENTRYPOINT [ "python3"] 
CMD [ "-u","api.py" ]

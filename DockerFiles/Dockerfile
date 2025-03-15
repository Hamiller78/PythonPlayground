# latest Ubuntu version
FROM docker.io/library/ubuntu:latest  

ADD install.sh /
RUN chmod u+x /install.sh

# prepend the new path
ENV PATH /root/miniconda3/bin:$PATH

# run the bash script with verbose output
RUN bash -x /install.sh

# check if IPython is installed
RUN which ipython

# execute IPython when container is run
CMD ["ipython"]
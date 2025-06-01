FROM jupyter/scipy-notebook

# install build utilities 
RUN pip install joblib

# check our python environment
RUN python3 --version
RUN pip3 --version

# install Flask
RUN pip install Flask

# set the working directory for containers
WORKDIR /usr/src/workdir/

# Expose a port for web application
EXPOSE 5000

FROM jupyter/scipy-notebook

# install build utilities 
RUN pip install joblib

#install tensorflow cvlib
RUN pip install opencv-python tensorflow
RUN pip install cvlib

# check our python environment
RUN python3 --version
RUN pip3 --version

# set the working directory for containers
WORKDIR /usr/src/writing_quality

# Expose a port for web application
EXPOSE 5000

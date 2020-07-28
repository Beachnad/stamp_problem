#FROM python:3.8
#
#RUN pip install pymc3
#RUN pip install jupyter

################

# Start from a core stack version
FROM jupyter/datascience-notebook
# Install from requirements.txt file
COPY requirements.txt /tmp/
RUN pip install --requirement /tmp/requirements.txt && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER

#COPY . /home/jovyan/work
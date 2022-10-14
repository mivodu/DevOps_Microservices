[![CircleCI](https://dl.circleci.com/status-badge/img/gh/mivodu/DevOps_Microservices/tree/master.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/mivodu/DevOps_Microservices/tree/master)

## Project Summary
In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

## Instructions

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies

### Running locally
```python app.py```

### Run in Docker
```./run_docker.sh```

### Run in (local) Kubernetes
* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run 
* ```./run_kubernetes.sh```

## Repository Overview

* app.py : The python application
* model_data directory: Contains model data used by the application
* requirements.txt : list of required packeges and versions to run the application
* Makefile: will install required packeges and linter
* make_predictions.sh : Script that will call the application and add some new predictions

* Dockerfile : Docker definition to build the application in a docker container
* run_docker.sh: Script to build the docker container with the application and executes the container locally
* upload_docker.sh: Script to upload the docker container/image to docker hub

* run_kubernetes : will deploy the docker container from docker hub on kubernetes
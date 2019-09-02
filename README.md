# Docker Test

## Basic commands
The following commands maybe run only with sudo permissions.

* List all containers (including hiding ones)  
``` $ docker container ls --all ```  
* List docker images  
``` $ docker image ls ```  
* Test docker installation with hello-world container  
``` $ docker run hello-world ```  

## Dockerfile
Dockerfile it is a file that defines what goes on in the environment inside your container.  
Example:  
```
    # Use an official Python runtime as a parent image
    FROM python:3.6

    # Set the working directory to /app
    WORKDIR /app

    # Copy the current directory contents into the container at /app
    COPY . /app

    # Install any needed packages specified in requirements.txt
    RUN pip install --trusted-host pypi.python.org -r requirements.txt

    # Make port 80 available to the world outside this container
    EXPOSE 80

    # Define environment variable
    ENV NAME World

    # Run app.py when the container launches
    CMD ["python", "app.py"]
```  
## Building and running your container  
### Building
Using the previous Dockerfile, now build your container, with [python code](./app.py) and [requirements](./requirements.txt).  
* Command for building the docker container  
``` $ docker build --tag=friendlyhello . ```  
_The --tag option defines the container's name_

### Running
* To run the app and map it on your machine's port 4000 and the published container port 80 using **-p**:  
``` $ docker run -p 4000:80 friendlyhello```  
* For running your container in the background, just use **-d** option:  
``` $ docker run -d -p 4000:80 friendlyhello```  
* Stop your container using the following command:  
``` $ docker container stop CONTAINER_ID```  
_You can get your container id using container list command_  
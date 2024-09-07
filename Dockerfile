#Dockerfile

#Use an official pythom runtime as a parent image
FROM python:3.9-slim

#Set the working directory in the container
WORKDIR /app

#Copy the current directory contents into the container at /app
COPY . /app

#Install any needed packages specified in requirements.txt
RUN pip install -r /app/requirements.txt --no-cache-dir

#Make port 500 available to the world outside this container
EXPOSE 5000

#Run app.py when the container launches
CMD ["python", "app.py"]
# Docker for Data Science

Docker image for working with Anaconda.

## Usage
```
docker run --name you_name -p 8888:8888 -v "$PWD/notebooks:/opt/notebooks" -d shahruslan/docker-data-science
```

First you will need to create a `notebook` folder. After starting the container, open your browser at [http://localhost:8888/](http://localhost:8888/). 
Enter `root` as the password.


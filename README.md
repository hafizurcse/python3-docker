An image that is able to build Python3 packages numpy, scipy and cryptography
from source.

Image includes `build essential` as well as `wget`, `curl`, `git` and `python3.4`.
All dependencies for building an optimized version of `numpy` such as `gfortran` 
are included as well.

Python 3 modules installed:

- pip, 
- virtualenv

## Direct use:

```
docker pull hardbyte/python3
docker run -it hardbyte/python3 /bin/bash
```

## Inheriting Example

Create a dockerfile in your Python application directory

```
FROM hardbyte/python3

WORKDIR /app
ADD . /app

RUN pip install --upgrade -r /app/requirements.txt

EXPOSE 8080
CMD []

ENTRYPOINT ["python3.4", "/app/main.py"]
```

Also see [hardbyte/python3-app](https://registry.hub.docker.com/u/hardbyte/python3-app/)
for a repository to Dockerize standard Python applications.


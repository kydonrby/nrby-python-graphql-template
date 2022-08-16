# Nrby Node GraphQL Backend Template

This is a skeleton template of a backend that is based on Python and Flask module. You may fork this project whenever you want to write a graphql server from scratch.


## Required Installation

1. Python https://www.python.org/downloads/
2. Docker https://docs.docker.com/get-docker/
3. PostgreSQL (optional since you can change DB setup depending on project requirements) https://www.postgresql.org/download/

## Setting up environment

**Via Local Machine run**
1. If you manage to install NodeJS in your device, do `python3 -m venv myapp` on the root directory of this project via Linux Terminal or Powershell for Windows users.
2. Change pyvenv.cfg variables accordingly. Also, change DB setup in api/__init__.py depending on your local DB setup.
3. Go to python terminal via `python` and do
`
>>> from app import db
>>> db.create_all()
>>> exit()
`
4. Do `export FLASK_APP=app.py` for linux users or `$env:FLASK_APP=app.py` for Powershell Windows Users
5. While still on virtual environment, do `python3 -m pip install -r requirements.txt`
6. Run `flask app`. Then once its running, go to http://localhost:3000/graphql to test some query

**Via Docker**
1. Change DB setup in api/__init__.py depending on your local DB setup
2. On the root project, do `docker build . -t nrby/graphql`
3. Then do `docker run -p <ENVPORT>:<ENVPORT> -d --name graphql nrby/graphql`
4. Go to http://localhost:3000/graphql to test some query
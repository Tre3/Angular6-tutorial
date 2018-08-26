docker build -t angular-tutorial .
docker run -d --name angular-tutorial -v $PWD/application:/home/application -p 4200:4200 angular-tutorial

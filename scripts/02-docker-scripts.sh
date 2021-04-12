docker build -t wrijughosh/gabweb2021 .

docker images

docker login  

docker push wrijughosh/gabweb2021:latest

--- running locally
docker run -it --rm -p 5000:80 --name sample_web wrijughosh/gabweb2021:latest
docker build -t $JOB_NAME:$BUILD_ID .

docker tag $JOB_NAME:$BUILD_ID manasvi2703/$JOB_NAME:$BUILD_ID

docker tag $JOB_NAME:$BUILD_ID manasvi2703/$JOB_NAME:latest

docker push manasvi2703/$JOB_NAME:$BUILD_ID

docker push manasvi2703/$JOB_NAME:latest

docker rmi -f $JOB_NAME:$BUILD_ID manasvi2703/$JOB_NAME:$BUILD_ID manasvi2703/$JOB_NAME:latest

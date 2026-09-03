FROM alpine:3.19
RUN apk add --no-cache curl bash
WORKDIR /app
RUN echo 'echo "Deploying High-Velocity DevSecOps Secured Application Framework"' > run.sh
RUN chmod +x run.sh
CMD ["/bin/bash", "./run.sh"]

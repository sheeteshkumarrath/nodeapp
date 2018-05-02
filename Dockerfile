# use a node base image
FROM node:carbon

# set maintainer
LABEL maintainer "sheeteshkumarrath@gmail.com"

# set a health check
HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f http://10.0.2.15:5000 || exit 1

# tell docker what port to expose
EXPOSE 5000

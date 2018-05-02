# use a node base image
FROM node:carbon

# set maintainer
LABEL maintainer "sheeteshkumarrath@gmail.com"
#RUN -u root
#RUN npm install
#RUN npm i --save express
#RUN npm i --save-dev supertest should mocha
#RUN chmod +x ./script/test
#RUN node app.js &
# set a health check
HEALTHCHECK --interval=10s \
            --timeout=10s \
            CMD curl -f http://localhost:5000 || exit 1

# tell docker what port to expose
EXPOSE 5000

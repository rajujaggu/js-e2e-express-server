FROM node:19.3-bullseye
LABEL author = "raj"
EXPOSE 3000
RUN apt install git -y && \
    git clone https://github.com/rajujaggu/js-e2e-express-server.git && \
    cd js-e2e-express-server && \
    npm install
ARG BRANCH=main
WORKDIR /js-e2e-express-server
CMD ["npm","start","-h","0.0.0.0"] 
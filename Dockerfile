FROM node

RUN mkdir appserver

WORKDIR /appserver

# RUN mkdir app

# COPY . ./app

# RUN apt-get update

RUN npx create-react-app my-app

# RUN npm start

EXPOSE 3000
FROM node:14.15.0

RUN mkdir /src
RUN mkdir /src/server

WORKDIR /src

# COPY /server/package.json /server/yarn.lock ./server/
COPY package.json yarn.lock ./
# RUN yarn install --cwd ./server
RUN yarn install

COPY . .

EXPOSE 8002

CMD yarn dev

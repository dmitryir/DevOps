FROM node

RUN apt-get update && apt-get install -y vim nano

RUN mkdir /skbox_flatris

COPY package.json /skbox_flatris
WORKDIR /skbox_flatris

RUN yarn install

COPY . /skbox_flatris

RUN yarn test
RUN yarn build

CMD yarn start

EXPOSE 3000


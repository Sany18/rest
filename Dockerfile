FROM node:16

WORKDIR .
COPY . .
RUN npm i
EXPOSE 3000

CMD [ "npm", "run", "start:prod" ]

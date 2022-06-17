FROM node:latest

WORKDIR /usr/src/app



# ENV PATH /usr/src/app/node_modules/.bin:$PATH

COPY pacakage*.json ./ package-lock.json .

RUN npm install 

COPY . .

EXPOSE 5678

CMD ["npm", "start"]


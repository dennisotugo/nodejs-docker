FROM node:lts-alpine 
RUN mkdir /app
COPY . /app
RUN chown -R node:node /app
USER node
RUN npm test
CMD [“node”, “app.js”]

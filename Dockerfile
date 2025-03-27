# FROM node:6-stretch
FROM node:18.20.8

RUN mkdir /usr/src/vulnpkg
RUN mkdir /tmp/extracted_files
COPY . /usr/src/vulnpkg
WORKDIR /usr/src/vulnpkg

RUN npm update
RUN npm install
EXPOSE 3001
EXPOSE 9229
ENTRYPOINT ["npm", "start"]

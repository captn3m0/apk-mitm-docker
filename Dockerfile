FROM node:20

WORKDIR /work

RUN apt update
RUN apt install -y default-jre-headless zip

ADD https://bitbucket.org/iBotPeaches/apktool/downloads/apktool_2.11.0.jar /usr/local/bin/apktool.jar 
ADD https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool /usr/local/bin/apktool 
RUN chmod +x /usr/local/bin/apktool /usr/local/bin/apktool.jar
RUN npm install apk-mitm

WORKDIR /output

ENTRYPOINT ["/work/node_modules/.bin/apk-mitm"]

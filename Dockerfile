FROM node@sha256:c19647fcafe27628f06daa9feaaec2b7acfb9ae996d9aeaaa84ac90f62b6513c

WORKDIR /src

RUN npm install -g browser-sync

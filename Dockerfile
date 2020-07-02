FROM node:12 as vue

WORKDIR /workdir

COPY vue-app /workdir

RUN npm i
RUN npm run build

FROM node:12 as react

WORKDIR /workdir

COPY react-app /workdir

RUN npm i
RUN npm run build

FROM nginx

WORKDIR /workdir
COPY --from=vue /workdir/dist/ /workdir/vue-app/
COPY --from=react /workdir/build/ /workdir/react-app/

COPY nginx.conf /etc/nginx/nginx.conf
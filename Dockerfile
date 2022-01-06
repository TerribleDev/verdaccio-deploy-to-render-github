FROM verdaccio/verdaccio

USER root

ENV NODE_ENV=production

RUN yarn install
RUN yarn add verdaccio-github-oauth-ui
COPY config.yaml /verdaccio/conf
USER verdaccio
FROM node:10

ENV HOME /AngularNest-Fullstack-Starter

WORKDIR ${HOME}
ADD . $HOME

RUN yarn install

ENV NODE_ENV production

# envs --
ENV SITE_URL https://angularnest-by-example-stage.firebaseapp.com
ENV FUNC_URL https://us-central1-angularnest-by-example-stage.cloudfunctions.net

# ENV SENTRY_DSN <SENTRY_DSN>
# -- envs

RUN yarn build
RUN cd functions && yarn install

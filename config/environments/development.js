/* @ts-check */
/* eslint-disable no-param-reassign */

import nodosWebpack from '@nodosjs/webpack-extension';

export default async (app) => {
  app.addExtension(nodosWebpack);

  app.config.logLevel = 'debug';
  app.config.cacheModules = false;

  app.config.db = {
    type: process.ENV.NODOS_DB_TYPE,
    database: process.ENV.NODOS_DB_NAME,
    host: process.ENV.NODOS_DB_HOSTNAME,
    username: process.ENV.NODOS_DB_USERNAME,
    password: process.ENV.NODOS_DB_PASSWORD,
  };
};

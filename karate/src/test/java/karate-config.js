function fn() {
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
    _url: 'defaultUrl'
  }
  if (env == 'QA') {
    // customize
    config._url = 'https://jobportalkarate.herokuapp.com';
  } else if (env == 'Dev') {
    // customize
  }
  return config;
}
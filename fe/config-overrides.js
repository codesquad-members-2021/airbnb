const { alias } = require('react-app-rewire-alias');

const aliasMap = {
  '@components': 'src/components',
  '@styles': 'src/styles',
  '@pages': 'src/pages',
  '@assets': 'src/assets',
};

module.exports = alias(aliasMap);

const { alias } = require('react-app-rewire-alias');

const aliasMap = {
  '@components': 'src/components',
  '@styles': 'src/styles',
  '@pages': 'src/pages',
  '@assets': 'src/assets',
  '@recoil': 'src/recoil',
  '@utils': 'src/utils',
};

module.exports = alias(aliasMap);

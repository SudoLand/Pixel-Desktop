// eslint-disable-next-line @typescript-eslint/no-require-imports
const rules = require('./webpack.rules.ts');
// eslint-disable-next-line @typescript-eslint/no-require-imports
const plugins = require('./webpack.plugins.ts');

rules.push({

  test: /\.css$/,
  use: [{
    loader: 'style-loader',
  }, {
    loader: 'css-loader',
  }],
});

module.exports = {

  module: {
    rules,
  },
  plugins,
  resolve: {
    extensions: [
      '.js',
      '.ts',
      '.jsx',
      '.tsx',
      '.css',
    ]
  },
};

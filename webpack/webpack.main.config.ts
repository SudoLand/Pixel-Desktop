module.exports = {
  entry: './src/index.ts',
  module: {
    // eslint-disable-next-line @typescript-eslint/no-require-imports
    rules: require('./webpack.rules'),
  },
  resolve: {
    extensions: ['.js', '.ts', '.jsx', '.tsx', '.css', '.json']
  },
};
var path = require('path');

module.exports = {
  entry: "./frontend/my_app.jsx",
  devtool: 'source-map',
  output: {
      path: path.resolve(__dirname, 'app', 'assets', 'javascripts'),
      filename: "bundle.js"
  },
  resolve: {
    extensions: ['.js', '.jsx', '*']
  },
  ...
};

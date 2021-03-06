// Import external libraries
const path = require('path');
const ExtractTextPlugin = require("extract-text-webpack-plugin");


// Define our compiled asset files
const jsOutputTemplate = 'javascripts/application.js';
const cssOutputTemplate = 'stylesheets/application.css';


module.exports = {
    // Remove this if you are not using Docker
    watchOptions: {
        aggregateTimeout: 300,
        poll: 1000,
        ignored: /node_modules/
    },

    // Define our asset directory
    context: path.join(__dirname, '/app/assets'),

    // What js / CSS files should we read from and generate
    entry: {
        application: ['./javascripts/application.js', './stylesheets/application.sass']
    },

    // Define where to save assets to
    output: {
        path: path.join(__dirname, '/public'),
        filename: jsOutputTemplate
    },
    plugins: [
        new ExtractTextPlugin({ filename: cssOutputTemplate, allChunks: true }), // Define where to save the CSS file
    ],
    // Define how different file types should be transpiled
    module: {
        loaders: [{
            test: /\.js$/,
            exclude: /node_modules/,
            loader: 'babel-loader',
            query: {
                presets: ['es2015']
            }
        },
        {
            test: /\.css$/,
            loaders: ExtractTextPlugin.extract('css-loader')
        },
        {
            test: /\.sass$/,
            loader: ExtractTextPlugin.extract(['css-loader', 'sass-loader'])
        }]
    }
}
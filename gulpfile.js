var elixir = require('laravel-elixir');

process.env.NODE_ENV = 'production';

elixir.config.assetsPath = './resources/';
elixir.config.publicPath = './assets/';
elixir.config.sourcemaps = false;
elixir.config.production = true;

elixir(function (mix) {
    mix.sass('app.scss');
    mix.scripts('app.js');
});

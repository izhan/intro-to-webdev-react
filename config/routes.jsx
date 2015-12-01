var React = require('react');
var Router = require('react-router');
var App = require('../components/layout/App.jsx');
var Route = Router.Route;
var DefaultRoute = Router.DefaultRoute;

var defaultView = require("../components/default_view.coffee")

module.exports = (
  <Route name="app" path="/" handler={App}>
    <DefaultRoute name="calendar" handler={defaultView} />
  </Route>
);

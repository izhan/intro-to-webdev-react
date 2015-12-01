var React = require('react');
var Router = require('react-router');
var $ = require('jquery');
var RouteHandler = Router.RouteHandler;

module.exports = React.createClass({
  // componentDidMount: function() {
  //   // TODO insert the right heroku url
  //   var url = process.env.NODE_ENV === 'development' ? 'http://localhost:3000' : 'MY_HEROKU_URL';

  //   $.ajax({
  //     url: url + "/test_url",
  //     crossDomain: true,
  //     dataType: 'json',
  //     success: function(data) {
  //       console.log(data);
  //     }
  //   });
  // },

  render: function () {
    return (
      <div>
        Hello World!
        <RouteHandler/>
      </div>
    );
  }
});

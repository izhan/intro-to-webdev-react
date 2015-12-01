React = require('react')

module.exports = React.createClass
  render: ->
    { div } = React.DOM

    div {},
      "This is the default view!"

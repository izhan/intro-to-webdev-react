React = require('react')
Reflux = require('reflux')

DummyActions = require('../actions/dummy_action.coffee')
DummyStore = require('../stores/dummy_store.coffee')

module.exports = React.createClass
  displayName: "DefaultView"
  
  mixins: [ Reflux.ListenerMixin ]

  getInitialState: ->
    data: "fetching"

  onDataFetch: ->
    data = DummyStore.getDummyData()
    @setState data: data

  componentDidMount: ->
    @listenTo DummyStore, @onDataFetch

  render: ->
    { div } = React.DOM

    div {},
      "This is the default view!"

      div
        style:
          width: 100
          height: 100
          background: "red"
        @state.data
      div
        style:
          width: 100
          height: 100
          background: "green"
        onClick: -> DummyActions.setDummyData("new data")
        "set dummy data!!!"

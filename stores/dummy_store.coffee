Reflux = require('reflux')

DummyMixin = require('../mixins/dummy_mixin.coffee')
DummyActions = require('../actions/dummy_action.coffee')

module.exports = Reflux.createStore
  listenables: [DummyActions]
  mixins: [DummyMixin]

  data: {
    foo: "bar"
  }

  getDummyData: -> @data.foo

  setDummyData: (data) -> 
    @data.foo = data
    @trigger()

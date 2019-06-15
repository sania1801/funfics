// ##= require action_cable
// ##= require_self
// ##= require_tree ./channels
// #@App || (@App = {})
// #App.cable = ActionCable.createConsumer()

  //= require action_cable
  //= require_self
  //= require_tree ./channels

(function() {
  this.App || (this.App = {});

  App.cable = ActionCable.createConsumer();
}).call(this);



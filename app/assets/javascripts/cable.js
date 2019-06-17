// #= require action_cable
// #= require_self
// #= require_tree ./channels
// @App || (@App = {})
// App.cable = ActionCable.createConsumer()
// App.subscriptions = [];

  //= require action_cable
  //= require_tree ./channels

(function() {
  this.App || (this.App = {});
  App.cable = ActionCable.createConsumer();
  // console.log("2")
}).call(this);



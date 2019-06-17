    App.post = App.cable.subscriptions.create {channel: 'PostChannel', post: "post"}
    connected: ->
# Called when the subscription is ready for use on the server

    disconnected: ->
# Called when the subscription has been terminated by the server

    received: (data) ->
    $('#comments').append data['comment']
# Called when there's incoming data on the websocket for this channel
    speak: (comment) ->
        @perform 'speak', comment: comment, post: `$('#input_text').data('postId')`, user: `$('#input_text').data('userId')`


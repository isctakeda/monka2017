# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
App.room = App.cable.subscriptions.create "RoomChannel",
  connected: ->
    #
  disconnected: ->
    #
  received: (data) ->
    console.log(data)
    element = document.createElement('div')
    element.className = 'message'
    element.innerHTML = "<p>#{data.message}</p>"
    document.getElementById('messages').appendChild(element)
  post_message: (message) ->
    @perform 'post_message', message: message

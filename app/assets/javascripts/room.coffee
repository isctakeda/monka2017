document.addEventListener('DOMContentLoaded', () ->
  form = document.getElementById('message_form')
  form.addEventListener('submit', (event) ->
    event.preventDefault()
    input = document.getElementById('message_field').value
    App.room.post_message(input)
    document.getElementById('message_field').value = ''
  )
)

# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
  $('#calendar').fullCalendar
    firstDay: 1
    timeFormat:
      '': 'H:mm '
    buttonText:
      today: 'this month'

    selectable: true
    select: ->
      location.href = '/schedules/new'

    allDayDefault: false
    events: '/schedules.json'
    eventClick: (event)->
      location.href = '/schedules/' + event.id + '/edit/'

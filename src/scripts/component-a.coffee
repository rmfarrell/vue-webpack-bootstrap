# Accordian = Vue.component('component-q',

#   props:
#     singleShow:
#       type: Boolean
#       require: false
#       default: false

#   events:
#     toggleOpen: (opened) ->
#       return if @singleShow == false
#       @.$children.forEach( (child) ->
#         child.open = false unless child == opened
#       )

#   replace: true

#   template: '#accordian'
# )

# Vue             = require('vue')

# module.exports = Vue.component('comp-a',

#   template: comp_a_template(),

#   created: ->
#     alert 'test'
#   data: ->
#     msg: 'This is Component A'
# )
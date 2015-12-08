Vue             = require('vue')
css             = require('./assets/style.styl')
comp_a_template = require('jade!./component-a.jade')
parent_template = require('jade!./index.jade')
comp_b          = require('./components/b.vue')

new Vue({
  el: '#app'
  template: parent_template()
  replace: false
  data:
    msg: 'I am the parent'
  components:

    # Comp A is locally-scoped w/o using Vueify
    # This is better for use with components that are tightly-coupled with their parents
    'comp-a':
      template: comp_a_template(),
      data: ->
        msg: 'hello from Component A!'

    # Comp B is using a Vueify.
    # Vueify is great for writing highly re-usable apps 
    'comp-b': comp_b
})
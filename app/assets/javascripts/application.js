// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

class addFields {
    // This executes when the function is instantiated.
    constructor() {
      this.links = document.querySelectorAll('.add_fields')
      this.iterateLinks()
    }
  
    iterateLinks() {
      if (this.links.length === 0) return
      this.links.forEach(link => {
        link.addEventListener('click', e => {
          this.handleClick(link, e)
        })
      })
    }
  
    handleClick(link, e) {
      if (!link || !e) return
      e.preventDefault()
      let time = new Date().getTime()
      let linkId = link.dataset.id
      let regexp = linkId ? new RegExp(linkId, 'g') : null
      let newFields = regexp ? link.dataset.fields.replace(regexp, time) : null
      newFields ? link.insertAdjacentHTML('beforebegin', newFields) : null
    }
  }
  
  window.addEventListener('turbolinks:load', () => new addFields())
  
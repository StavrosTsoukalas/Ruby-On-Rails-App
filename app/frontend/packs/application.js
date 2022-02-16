// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "jquery"
import '../js/bootstrap_js_files.js'
import '../posts/style.js'
import '../posts/modal.js'
import '../posts/infinite_scroll.js'
import '../js/conversations/position_and_visibility.js'
import '../js/conversations/toggle_window.js'

Rails.start()
Turbolinks.start()
ActiveStorage.start()


# App config
require './config'

# Top-level layout configuration
AppLayout = require('./views/appLayout')
AppLayout.render()
window.AppLayout = AppLayout
window.Container = AppLayout.main

# Components
HeaderComponent = require './modules/header/component'

# Modules
HomeModule = require './modules/home/router'
ContactModule = require './modules/contact/router'
ContactMethodModule = require './modules/contact_method/router'
ShareProfileModule = require './modules/share_profile/router'
AuthModule = require './modules/auth/router'
# DeviceModule = require './modules/device/router'

# # # # # #

# Starts application
$(document).on 'ready', =>
  console.log 'Document Ready'

  # TODO - this should be moved into the Cordova Application
  # This should be part of the application lifecycle
  Backbone.history.start()
  Backbone.Radio.channel('header').trigger('reset')

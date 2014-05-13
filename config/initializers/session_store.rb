# Be sure to restart your server when you modify this file.

CookBook::Application.config.session_store :cookie_store, key: '_CookBook_session'

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rails generate session_migration")
# CookBook::Application.config.session_store :active_record_store



# production.rb - override environment.rb for production
config.action_controller.session = {
  :key            => '_something_secure',
  :secret         => 'really long random string',
  :expire_after   => 60*60*24*14,#time in seconds
  :secure         => true #The session will now not be sent or received on HTTP requests.
}
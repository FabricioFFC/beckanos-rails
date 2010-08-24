# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_beckanos-rails_session',
  :secret      => '3a75fc19915372f46b1752c5d5540fad7efd6ca5ed21d279eeb8c5359e5b59b0647efbabe06d8d5bbf6697398b62ab732b771ad17df1f70ffe5fd5a705e00ad9'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

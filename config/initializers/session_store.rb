# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_public_library_session',
  :secret      => '8394524102c124f7eaa9567cef352a4db2fce1258a1f63963f415aed51bdafd6dc16a3e222cae94174bac32a05ee7ab7cd8c0fd078dfdd98139071a0ad6a5b7f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

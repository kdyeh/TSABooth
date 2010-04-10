# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_tsa_session',
  :secret      => 'c9a7c93e9cf9a7bb728a8919660d0c365e15a88669b1ca79d17f66777683a9bdae6407cadd6336efb71a0791c80d97e7c74e227348bf4ae4a1096ebb44cd48b2'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

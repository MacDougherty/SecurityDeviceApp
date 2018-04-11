Apiotics.configure do |config|
  # The public and private keys are available on the Apiotics portal.  Navigate to your Hive's page and they will be towards the top
  config.public_key = "6828078ec240b8d4114797ecceca7e0eeeb192c11dfd46df446e560f4a8bc82f" #set this to an Environment variable
  config.private_key = "b5a9a4958ade1d81272a1311ab669f6954cdafefbc563b97de031f37a8bb2551" #set this to an Environment variable
  
  # If your local comms server is accepting TCP connections, the local port is the port that it will accept connections on
  config.local_port = 8001
  
  # If you are deploying to a hosting service like Heroku, which does not easily permit local TCP connections, turn the redis comms connection 
  # on, configure a Redis server to permit connections between your application and your local comms server, and set the heroku variable to true
  config.redis_comms_connection = false
	config.heroku = false
  
  # The remote port at Apiotics to initially connect to.  There should be very few reasons to change this.
  config.server_port = 8000
  
  # The Apiotics portal.  Again, very few reasons to change this.
  config.portal = "https://portal.apiotics.com/"
  
  # Secure communications parameters.  The defaults should be appropriate for almost all use cases.
  config.tls = true
  config.verify_peer = true
  config.handshake = true
  
  # Local logging.  By default these are set to try and have a happy medium between the data you have in your local application's database
  # and performance.  Turning local logging on can have a significant negative impact on performance.  Turning reduced metadata on can have
  # a small positive impact on performance.  These configuration variables should be set *before* running apiotics generators.
  config.local_logging = false
  config.reduced_metadata = true
  
end

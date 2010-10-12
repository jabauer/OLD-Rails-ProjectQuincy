# Be sure to restart your server when you modify this file

# Uncomment below to force Rails into production mode when
# you don't control web/app server and can't set it the proper way
RAILS_ENV = 'production'

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.3.8' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  # Settings in config/environments/* take precedence over those specified here.
  # Application configuration should go into files in config/initializers
  # -- all .rb files in that directory are automatically loaded.
  # See Rails::Configuration for more options.

  # Skip frameworks you're not going to use. To use Rails without a database
  # you must remove the Active Record framework.
  # config.frameworks -= [ :active_record, :active_resource, :action_mailer ]

  # Specify gems that this application depends on. 
  # They can then be installed with "rake gems:install" on new installations.
  # You have to specify the :lib option for libraries, where the Gem name (sqlite3-ruby) differs from the file itself (sqlite3)
  # config.gem "bj"
  # config.gem "hpricot", :version => '0.6', :source => "http://code.whytheluckystiff.net"
  # config.gem "sqlite3-ruby", :lib => "sqlite3"
  # config.gem "aws-s3", :lib => "aws/s3"

  # Only load the plugins named here, in the order given. By default, all plugins 
  # in vendor/plugins are loaded in alphabetical order.
  # :all can be used as a placeholder for all plugins not explicitly named
  # config.plugins = [ :exception_notification, :ssl_requirement, :all ]

  # Add additional load paths for your own custom dirs
  # config.load_paths += %W( #{RAILS_ROOT}/extras )

  # Force all environments to use the same logger level
  # (by default production uses :info, the others :debug)
  # config.log_level = :debug

  # Make Time.zone default to the specified zone, and make Active Record store time values
  # in the database in UTC, and return them converted to the specified local zone.
  # Run "rake -D time" for a list of tasks for finding time zone names. Comment line to use default local time.
  config.time_zone = 'UTC'

  # The internationalization framework can be changed to have another default locale (standard is :en) or more load paths.
  # All files from config/locales/*.rb,yml are added automatically.
  # config.i18n.load_path << Dir[File.join(RAILS_ROOT, 'my', 'locales', '*.{rb,yml}')]
  # config.i18n.default_locale = :de

  # Your secret key for verifying cookie session data integrity.
  # If you change this key, all old sessions will become invalid!
  # Make sure the secret is at least 30 characters and all random, 
  # no regular words or you'll be exposed to dictionary attacks.
  config.action_controller.session = {
    :session_key => '_pq_eafsd_session',
    :secret      => '85e4dea06afd72993dd4f75de0bd3177b843a31f934f388399637a54db3dc489174a5744ae766978dea76462f2909a8647d517af5f78cb28a740859d80c023ad'
  }

  # Use the database for sessions instead of the cookie-based default,
  # which shouldn't be used to store highly confidential information
  # (create the session table with "rake db:sessions:create")
  # config.action_controller.session_store = :active_record_store

  # Use SQL instead of Active Record's schema dumper when creating the test database.
  # This is necessary if your schema can't be completely dumped by the schema dumper,
  # like if you have constraints or database-specific column types
  # config.active_record.schema_format = :sql

  # Activate observers that should always be running
  # Please note that observers generated using script/generate observer need to have an _observer suffix
  # config.active_record.observers = :cacher, :garbage_collector, :forum_observer
  
end

require 'lib/auth_controller'
require 'will_paginate'

=begin

This places the create, edit, and delete functions in ActiveScaffold behind a secure login.  
Due to active_scaffold security protocols, this authentication must be added to every controller, so rather than
type out the requirements each time, they are loaded in the environment.
To see the code used to authenticate look at the module AuthController, found at /lib/auth_controller.rb

N.B. In order for this to work everytime you must be in production mode.  In development mode the authorization will only be loaded the first time!

=end 

[ActiveScaffold::AssignmentTitlesController, ActiveScaffold::AssignmentsController, ActiveScaffold::AssignmentTypesController, ActiveScaffold::BibliographiesController, ActiveScaffold::CitationsController, ActiveScaffold::ContinentsController, ActiveScaffold::EmpiresController, ActiveScaffold::InEmpiresController, ActiveScaffold::InRegionsController, ActiveScaffold::InStatesController, ActiveScaffold::IndividualsController, ActiveScaffold::LettersController, ActiveScaffold::LocationsController, ActiveScaffold::MembersController, ActiveScaffold::OccupationTitlesController, ActiveScaffold::OccupationTypesController, ActiveScaffold::OccupationsController, ActiveScaffold::OrgEvolutionTypesController, ActiveScaffold::OrgEvolutionsController, ActiveScaffold::OrganizationTypesController, ActiveScaffold::OrganizationsController, ActiveScaffold::RegionsController, ActiveScaffold::RelationshipTypesController, ActiveScaffold::RelationshipsController, ActiveScaffold::ResidenceTypesController, ActiveScaffold::ResidencesController, ActiveScaffold::StatesController].each do |controller_class|
  controller_class.send :include, AuthController
end

load 'deploy'
# Uncomment if you are using Rails' asset pipeline

Dir['lib/recipes/*.rb'].each { |plugin| load(plugin) }

load 'deploy/assets'
load 'config/deploy' # remove this line to skip loading any of the default tasks
require 'capistrano/sidekiq'


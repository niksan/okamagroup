role :app, %w(hosting_niksan@hydrogen.locum.ru)
role :web, %w(hosting_niksan@hydrogen.locum.ru)
role :db, %w(hosting_niksan@hydrogen.locum.ru)

set :ssh_options, forward_agent: true
set :rails_env, :production

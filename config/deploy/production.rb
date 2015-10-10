
server 'rubixdev.cloudapp.net', port: 3837, roles: [:app, :web, :db], primary: true
set :user, 'rubix'
set :puma_threads,    [2, 8]
set :puma_workers,    1
set :branch,          :staging
set :stage,           :production
set :ssh_options,     { forward_agent: true, user: fetch(:user), keys: %w(~/.ssh/id_rsa.pub) }
set :application,     'blist-api'
set :repo_url,        'git@github.com:rubixware/blist-api.git'

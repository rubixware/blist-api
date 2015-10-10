# config valid only for current version of Capistrano
lock '3.4.0'
set :application, "blist-api"
set :user,            :rubix
set :deploy_via,      :remote_cache
set :deploy_to,       "/home/#{fetch(:user)}/apps/#{fetch(:application)}"
set :puma_bind,       "unix://#{shared_path}/tmp/sockets/sav-puma.sock"
set :puma_state,      "#{shared_path}/tmp/pids/puma.state"
set :puma_pid,        "#{shared_path}/tmp/pids/puma.pid"
set :puma_access_log, "#{release_path}/log/puma.error.log"
set :puma_error_log,  "#{release_path}/log/puma.access.log"
set :puma_preload_app, true
set :puma_worker_timeout, nil
set :puma_init_active_record, true  # Change to true if using ActiveRecord
set :tmp_dir, "/home/#{fetch(:user)}/tmp"

# Default value for :scm
set :scm, :git

# Default value for :format
set :format, :pretty

# Default value for :log_level
set :log_level, :debug

# Default value for :pty
set :pty, true

# Default value for :linked_files
set :linked_files, fetch(:linked_files, []).push('config/application.yml', 'config/puma.rb')

# Default value for linked_dirs
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system','public/uploads')

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases
set :keep_releases, 2

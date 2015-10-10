#!/usr/bin/env puma
workers 1

threads 1, 8

app_dir = File.expand_path("../..", __FILE__)
shared_dir = "#{app_dir}/tmp"
environment 'development'
daemonize false

pidfile "#{shared_dir}/pids/puma.pid"
state_path "#{shared_dir}/pids/puma.state"
stdout_redirect "#{shared_dir}/../log/puma.log", "#{shared_dir}/../log/puma_err.log"

# quiet

bind "unix://#{shared_dir}/sockets/blist-api-puma.sock"

activate_control_app

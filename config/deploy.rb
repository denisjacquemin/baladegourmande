set :application, "bg"
role :app, "denisjacquemin.be"
role :web, "denisjacquemin.be"
role :db,  "denisjacquemin.be", :primary => true

set :user, "denisjac"
set :password, "nzVtY78hZ5"
set :deploy_to, "/home/#{user}/#{application}"
set :deploy_via, :copy
set :use_sudo, false

set :scm, :git
set :repository, "/Users/denisjacquemin/Documents/Projects/bg/.git"

set :rails_env, "production"

default_run_options[:pty] = true
set :group_writable, false
set :keep_releases, 2
set :runner, nil

task :set_permissions do
  donothing = true
end

namespace :deploy do
  task:restart, :roles => :app do
    run "skill -9 -u#{user} -cdispatch.fcgi"
  end
  
  task:after_update_code, :roles => :app do
    run "find #{release_path}/public -type d -exec chmod 0755 {} \\;"
    run "find #{release_path}/public -type f -exec chmod 0644 {} \\;"
    run "chmod 0755 #{release_path}/public/dispatch.*"
  end
end

desc "Create symlink to current dir"
task :after_setup, :roles => :app do
  run "ln -nfs /home/#{user}/#{application}/current/public/ /home/#{user}/public_html/baladestmonon.be"
end
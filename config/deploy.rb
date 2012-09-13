require "bundler/capistrano"
set :rvm_ruby_string, 'ruby-1.9.3-p194@paciorky'
require "rvm/capistrano"

#task :production do
#  set :deploy_to, "/home/ruby/production/paciorky"
#end
#
#task :staging do
#  set :deploy_to, "/home/ruby/sandbox/paciorky"
#end

default_run_options[:pty] = true
set :application, "Paciorky"
set :repository, "http://deployer:e0TdnCyJ@hg.paciorky.com/ruby/paciorky"

set :scm, "git"
set :scm_password, "e0TdnCyJ"
set :scm_username, "deployer"
#set :deploy_via, :remote_cache
set :branch, :master
set :keep_releases, 5

# repo details
server "dev.paciorky.com", :app, :web, :db, :primary => true
set :deploy_to, "/home/ruby/sandbox/paciorky"
set :user, "ruby"
set :use_sudo, false

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  task :start do
    ;
  end
  task :stop do
    ;
  end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path, 'tmp', 'restart.txt')}"
  end
end

task :db_setup, :roles => :app do
  run <<-CMD
           rm -f #{release_path}/config/database.yml &&
           ln -s #{shared_path}/database.yml #{release_path}/config/database.yml

  CMD

end
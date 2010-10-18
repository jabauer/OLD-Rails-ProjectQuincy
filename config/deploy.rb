set :application, "ProjectQuincy"
set :domain, "eafsd.org"
set :user, "jeanbau"  # The server's user for deploys

default_run_options[:pty] = true  # Must be set for the password prompt from git to work
set :repository, "http://github.com/jabauer/ProjectQuincy.git"  # Your clone URL
set :scm, "git"
set :use_sudo, false
set :branch, "master"
set :deploy_via, :remote_cache #keeps a local copy of the git repo keeps fetching to a minimum
set :deploy_to, "/home/#{user}/apps/#{application}/"

# This is where Rails migrations will run
server "#{domain}", :web, :app, :db, :primary => true

# If you are using Passenger mod_rails uncomment this:
# if you're still using the script/reapear helper you will need
# these http://github.com/rails/irs_process_scripts

 namespace :deploy do
   task :start do ; end
   task :stop do ; end
   task :restart, :roles => :app, :except => { :no_release => true } do
     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
   end
 end

after 'deploy:symlink', 'deploy:finishing_touches'

namespace :deploy do
   task :finishing_touches, :roles => :app do
    run "cp -pf #{deploy_to}/to_copy/environment.rb #{current_path}/config/environment.rb"
    run "cp -pf #{deploy_to}/to_copy/database.yml #{current_path}/config/database.yml"
    run "cp -pf #{deploy_to}/to_copy/auth_settings.rb #{current_path}/config/initializers/auth_settings.rb"
  end
end

# config valid only for current version of Capistrano
lock '3.6.1'

set :user                    , 'ubuntu'
set :application             , 'pcmapp'
set :deploy_to               , "/home/#{fetch(:user)}/apps/#{fetch(:application)}"
set :scm                     , :git
set :repo_url                , 'git@github.com:SislanERP/PCM.git'
set :keep_releases           , 5
set :ssh_options             , { forward_agent: true, user: fetch(:user) , keys: %w(~/.ssh/id_rsa.pub) }
set :rails_env               , :production

## Linked Files & Directories (Default None):
set :linked_files, %w{config/secrets.yml .env}
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system public/uploads}

set :puma_threads            , [4, 16]
set :puma_workers            , 0

# Don't change these unless you know what you're doing
set :pty                     , true
set :use_sudo                , false
set :puma_bind               , "unix://#{shared_path}/tmp/sockets/#{fetch(:application)}-puma.sock"
set :puma_state              , "#{shared_path}/tmp/pids/puma.state"
set :puma_pid                , "#{shared_path}/tmp/pids/puma.pid"
set :puma_access_log         , "#{release_path}/log/puma.access.log"
set :puma_error_log          , "#{release_path}/log/puma.error.log"
set :puma_preload_app        , true
set :puma_worker_timeout     , nil
set :puma_init_active_record , true  # Change to false when not using ActiveRecord
# set :application, 'my_app_name'
# set :repo_url, 'git@example.com:me/my_repo.git'

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, '/var/www/my_app_name'

# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: 'log/capistrano.log', color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, 'config/database.yml', 'config/secrets.yml'

# Default value for linked_dirs is []
# append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'public/system'

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5

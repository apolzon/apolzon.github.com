set :application, "blog"
set :user,  "p184576r"
set :domain, "applesonthetree.com"
set :mongrel_port, "21800"
set :server_hostname, "applesonthetree.com"

set :git_account, "apolzon"

set :scm_passphrase, Proc.new { Capistrano::CLI.password_prompt('Git Password: ') }

# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, "applesonthetree.com"                          # Your HTTP server, Apache/etc
role :app, "applesonthetree.com"

default_run_options[:pty] = true
set :repository, "git@github.com:apolzon/apolzon.github.com.git"
set :scm, :git
set :user, user

ssh_options[:forward_agent] = true
set :branch, "hostingrails"
set :deploy_via, :remote_cache
set :git_shallow_clone, 1
set :git_enable_submodules, 1
set :use_sudo, false
set :deploy_to, "/home/p184576r/apps/blog"

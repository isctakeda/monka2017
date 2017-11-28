require 'capistrano/rails'
require 'capistrano/bundler'
require 'capistrano/rvm'
require 'capistrano/puma'

install_plugin Capistrano::Puma
install_plugin Capistrano::Puma::Workers
install_plugin Capistrano::Puma::jungle
install_plugin Capistrano::Puma::Monit
install_plugin Capistrano::Puma::Nginx

Dir.glob("lib/capistrano/tasks/*.rake").each { |r| import r }

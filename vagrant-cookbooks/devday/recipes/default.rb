# Install required packages
%w(phantomjs libicu-dev).each do |pkg|
  package pkg do
    action :install
  end
end

# setup mysql
mysql_service 'default' do
  version '5.6'
  bind_address '0.0.0.0'
  port '3306'
  initial_root_password ''
  socket '/var/run/mysqld/mysqld.sock'
  action [:create, :start]
end

mysql_client 'default' do
  action :create
end

# install ruby and gems
rbenv_ruby '2.3.1'

rbenv_gem 'bundler' do
  ruby_version '2.3.1'
end

rbenv_gem 'pre-commit' do
  ruby_version '2.3.1'
end

rbenv_gem 'git_remote_branch' do
  ruby_version '2.3.1'
end

# frozen_string_literal: true

### Dependencies ###
DEPENDENCIES = %w[
  bzip2
  gcc
  gdbm-devel
  libffi-devel
  libyaml-devel
  ncurses-devel
  openssl-devel
  readline-devel
  zlib-devel
  ImageMagick-devel
  postgresql94-devel
].freeze

DEPENDENCIES.each do |dependency|
  package dependency
end

### rbenv ###
RBENV_ROOT = '/usr/local/rbenv'
RBENV_CONF = '/etc/profile.d/rbenv.conf.sh'
RAILS_CONF = '/etc/profile.d/rails.conf.sh'

git RBENV_ROOT do
  repository 'https://github.com/rbenv/rbenv.git'
end

remote_file RBENV_CONF do
  mode '0644'
  owner 'root'
  group 'root'
end

remote_file RAILS_CONF do
  mode '0644'
  owner 'root'
  group 'root'
end

execute 'src/configure && make -C src' do
  cwd RBENV_ROOT
  not_if "test -e #{RBENV_ROOT}/src/Makefile"
end

### ruby-build ###
git "#{RBENV_ROOT}/plugins/ruby-build" do
  repository 'https://github.com/sstephenson/ruby-build.git'
end

### rbenv-default-gems ###
git "#{RBENV_ROOT}/plugins/rbenv-default-gems" do
  repository 'https://github.com/rbenv/rbenv-default-gems.git'
end

remote_file "#{RBENV_ROOT}/default-gems" do
  mode '0644'
  owner 'root'
  group 'root'
end

### Ruby ###
VERSION = '2.4.4'

execute "source #{RBENV_CONF} && rbenv install #{VERSION}" do
  not_if "source #{RBENV_CONF} && rbenv versions | grep #{VERSION}"
end

execute "source #{RBENV_CONF} && rbenv global #{VERSION}" do
  not_if "source #{RBENV_CONF} && rbenv version | grep #{VERSION}"
end

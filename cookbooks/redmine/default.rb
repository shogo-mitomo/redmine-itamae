# frozen_string_literal: true

### Install ###
APP_ROOT = '/var/www/application'

COMMANDS = [
  'bundle install --without development test --path vendor/bundle --jobs 4',
  'bundle exec rake generate_secret_token',
  'bundle exec rake db:migrate',
  'bundle exec rake assets:precompile',
  'bundle exec pumactl start',
].freeze

COMMANDS.each do |command|
  execute command do
    cwd APP_ROOT
  end
end

### Plugins ###
COMMANDS = [
  'bundle',
  'bundle exec rake assets:precompile',
  'bundle exec rake redmine:plugins:migrate',
  'bundle exec pumactl restart',
].freeze

COMMANDS.each do |command|
  execute command do
    cwd "#{APP_ROOT}/plugins"
  end
end

### Themes ###
COMMANDS = [
  'bundle exec rake assets:precompile',
  'bundle exec pumactl restart',
].freeze

COMMANDS.each do |command|
  execute command do
    cwd "#{APP_ROOT}/public/themes"
  end
end

### Cron ###
remote_file '/etc/cron.d/application' do
  mode '0644'
  owner 'root'
  group 'root'
end

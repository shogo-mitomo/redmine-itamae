# frozen_string_literal: true

### Install ###
BIN_FILE = '/usr/local/bin/certbot-auto'

http_request BIN_FILE do
  path BIN_FILE
  mode '0775'
  url 'https://dl.eff.org/certbot-auto'
  not_if "test -e #{BIN_FILE}"
end

### Generate ###
ADDRESS = ''
DOMAINS = %w[
].freeze

OPTIONS = "-d #{DOMAINS.join(',')} --agree-tos -n -m #{ADDRESS} --debug"
COMMAND = "#{BIN_FILE} certonly #{OPTIONS}"

execute "#{COMMAND} --standalone" do
  not_if "test -e /etc/letsencrypt/live/#{DOMAINS[0]}"
end

### Update ###
ROOT_DIR = '/var/www/application/public'

directory ROOT_DIR do
  owner 'ec2-user'
  group 'ec2-user'
end

execute "#{COMMAND} --webroot -w #{ROOT_DIR} --force-renewal" do
  not_if "test -e #{ROOT_DIR}/.well-known"
end

### Cron ###
remote_file '/etc/cron.d/certbot' do
  mode '0644'
  owner 'root'
  group 'root'
end

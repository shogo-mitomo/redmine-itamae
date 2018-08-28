# frozen_string_literal: true

### Yum Repository ###
remote_file '/etc/yum.repos.d/nginx.repo' do
  mode '0644'
  owner 'root'
  group 'root'
end

YUM_CONF = '/etc/yum.conf'
OPTION   = 'exclude=nginx-all*'

file YUM_CONF do
  action :edit
  block { |content| content << "\n#{OPTION}\n" }
  not_if "grep #{OPTION} #{YUM_CONF}"
end

### Install ###
package 'nginx'

### Configuration Files ###
CONF_FILES = %w[
  /etc/nginx/.htpasswd
  /etc/nginx/nginx.conf
  /etc/nginx/conf.d/default.conf
].freeze

CONF_FILES.each do |file|
  remote_file file do
    mode '0644'
    owner 'root'
    group 'root'
  end
end

### Service ###
service 'nginx' do
  action %i[enable start]
end

# frozen_string_literal: true

### Yum ###
execute 'yum clean all && yum -y update' do
  not_if 'yum check-update'
end

### AWS CLI ###
remote_file '/etc/profile.d/aws-cli.conf.sh' do
  mode '0644'
  owner 'root'
  group 'root'
end

### Bash ###
remote_file '/etc/profile.d/bash.conf.sh' do
  mode '0644'
  owner 'root'
  group 'root'
end

### Git ###
package 'git'

### Less ###
remote_file '/etc/profile.d/less.conf.sh' do
  mode '0644'
  owner 'root'
  group 'root'
end

### NSS Softoken ###
remote_file '/etc/profile.d/nss-softokn.conf.sh' do
  mode '0644'
  owner 'root'
  group 'root'
end

### chrony ###
%w[ntp ntpdate].each do |package|
  package package do
    action :remove
  end
end

package 'chrony'

service 'chronyd' do
  action %i[enable start]
end

### newrelic-infra ###
remote_file '/etc/newrelic-infra.yml' do
  mode '0644'
  owner 'root'
  group 'root'
end

remote_file '/etc/yum.repos.d/newrelic-infra.repo' do
  mode '0644'
  owner 'root'
  group 'root'
end

package 'newrelic-infra'

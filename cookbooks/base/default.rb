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

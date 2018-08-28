# frozen_string_literal: true

### Yum ###
execute 'yum clean all && yum -y update' do
  not_if 'yum check-update'
end

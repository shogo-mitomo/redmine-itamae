# frozen_string_literal: true

### Yum Repository ###
execute 'curl -sL https://rpm.nodesource.com/setup_8.x | bash -' do
  not_if 'test -e /etc/yum.repos.d/nodesource-el.repo'
end

### Install ###
package 'nodejs'

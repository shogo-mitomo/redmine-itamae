# frozen_string_literal: true

COOKBOOKS = %w[
  base
  certbot
  nginx
  nodejs
  ruby
].freeze

COOKBOOKS.each do |cookbook|
  include_recipe "../cookbooks/#{cookbook}/default.rb"
end

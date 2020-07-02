# coding: utf-8
require 'rails_helper'

step 'hogehogeにアクセスする' do
  Capybara.app_host = 'http://localhost:3000/'
end

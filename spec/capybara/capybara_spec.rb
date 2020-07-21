require 'rails_helper'
require_relative "capybara"

RSpec.feature 'ログインとログアウト' do
  background do
    # ユーザを作成する
    User.create!(email: 'foo@example.com', password: '123456')
  end
  scenario 'ログインする' do
    # トップページを開く
    visit root_path
    # ログインフォームにEmailとパスワードを入力する
    fill_in 'Email', with: 'foo@example.com'
    fill_in 'Password', with: '123456'
    # ログインボタンをクリックする
    click_on 'ログイン'
    # ログインに成功したことを検証する
    expect(page).to have_content 'ログインしました'
  end
end

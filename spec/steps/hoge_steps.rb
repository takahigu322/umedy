# encoding: utf-8

steps_for :common do

  step ':page_name を訪問' do |page_name|
    url = "http://127.0.0.1/#{page_name}"
    visit url
  end 

  step 'hoge成功' do
    expect(page).to have_content("hoge成功")  
  end 
end

steps_for : hoge do

  step 'hogehogeボタンをクリック' do
    find('button#hogehoge').click
  end
end

steps_for : fuga do

  step 'fugafugaをフォームに入力' do
    fill_in 'fugafuga_form', with: 'fugafuga'
  end
end

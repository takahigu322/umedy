require 'rspec'

RSpec.describe 'test' do #describe （RSpec.describe）はテストのグループ化を宣言します。ここでは「testに関するテストを書くよー」と宣言しています。
  it 'test with "2 900\n"' do #itはテストを example という単位にまとめる役割をします。
    io = IO.popen("ruby AtCoder_Rspectest/A.rb", "w+")
    io.puts("2 900\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n") #expect(X).to eq YがYに等しくなることを期待する」と読めます。
  end
end

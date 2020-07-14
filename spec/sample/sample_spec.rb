require 'rails_helper'
#require_relative '../foo/foo' #classの参照
require_relative 'sample'

RSpec.describe '四則演算' do #ここでは「四則演算に関するテストを書くよー」と宣言しています。
  it '1 + 1 は 2 になること' do
    expect(1 + 2).to eq 3
  end
  it '2が含まれていること' do
    expect([1, 2, 3]).to include 2
  end
  it '1+1が1出ないこと' do
    expect(1+2).not_to eq 1
  end
  it 'asd' do
    message = 'hello'
    expect([message].first).to be message
  end

  it 'tryly' do
    expect(1).to be_truthy
  end
 
end



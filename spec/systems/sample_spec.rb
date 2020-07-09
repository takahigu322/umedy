require 'rails_helper'

describe "capybaraの実験", type: :feature do
  before :each do
    # 何か事前に必要な処理などがあれば
    visit '/hello/index' # 指定urlへアクセス
  end

  # RSpecマッチャー（以下参照）を使うサンプル
  # pageはページ自体を表す
  it "アクセスできるかテストする" do
    expect(page).to have_content "hello" 
  end

  # 要素を取得して、その属性が意図しているものか確認するサンプル
  it "全ての画像タグが挿入されているか" do
    all('.imageList__img').zip(get_all_urls) do |element, expected_url|
      expect(element[:src]).to eq(expected_url)
    end
  end

  # 要素を指定して取得して、そのinnerHTMLの要素が意図しているものか確認するサンプル
  it "表示されている名前がただしいか？" do
    elm = find('#name')
    expect(elm.text).to eq("山田太郎")
  end

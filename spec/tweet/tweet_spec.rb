require 'rails_helper'
require_relative 'tweet' #classの参照

RSpec.describe WeatherBot do
  it 'エラーなく予報をツイートすること' do
    # Twitter clientのモックを作る、double というメソッドを使うと、モックオブジェクトを作れる
    twitter_client_mock = double('Twitter client')
    allow(twitter_client_mock).to receive(:update).and_raise("エラーが発生しました")
    # updateメソッドが呼びだせるようにする、RSpecでは allow(モックオブジェクト).to receive(メソッド名) の形で、モックに呼び出し可能なメソッドを設定できる,expect を使うと「そのメソッドが呼び出されないとテスト失敗」
    expect(twitter_client_mock).to receive(:update)
  
    weather_bot = WeatherBot.new
    # twitter_clientメソッドが呼ばれたら上で作ったモックを返すように実装を書き換える、twitter_client メソッドを呼び出されたら、 Twitter::REST::Client.new ではなく、 twitter_client_mock を返すように変更する
    allow(weather_bot).to receive(:twitter_client).and_return(twitter_client_mock)
    # notifyメソッドが呼ばれることを検証する
    expect(weather_bot).to receive(:notify).twice

    #Twitter_forecastメソッドを呼び出す
    # weather_botのnotifyメソッドが呼び出されたらテストはパス

    weather_bot.tweet_forecast #アプリケーションコードを実行しています
  
  end
end

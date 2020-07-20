# 注：本当に動かす場合はtwitter gemが必要です
require 'twitter'

class WeatherBot
  def tweet_forecast
    twitter_client.update '今日は晴れです'
  rescue => e #エラーが発生した場合の処理をrescueの中に書く。
    notify(e)
  end

  def twitter_client
    Twitter::REST::Client.new
  end

  def notify(error)
    #実装は省略
  end
end
# [¥project_name]

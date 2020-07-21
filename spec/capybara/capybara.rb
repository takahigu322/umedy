class User
def initialize(name:, password:)
  @name = name
  @password = password
end
def greet
  if @password <= 12
    "ぼくは#{@name}だよ。"
  else
    "僕は#{@password}です。"
  end
end
end

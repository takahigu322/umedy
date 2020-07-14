class User < ActiveRecord::Base
  validates :name, :email, presence: true
  def name
    
  end

  def email
  end
end

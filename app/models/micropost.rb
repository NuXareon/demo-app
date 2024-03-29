class Micropost < ActiveRecord::Base
  attr_accessible :content, :user_id
  
  belongs_to :user
  
  validates :content, :length => {:maximum => 140, :minimum => 1}
  validates :user_id, :length => {:minimum => 1}
end

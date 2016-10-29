class Item < ActiveRecord::Base
  belongs_to :category
  belongs_to :user

  scope :size -> (t) where [:size =(t) ]
  scope :user ->where  [:user.all false]
end

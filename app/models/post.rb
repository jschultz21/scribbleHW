class Post < ActiveRecord::Base
  validates :text, presence: :true
  validates :title, presence: :true

  has_many :comments
end

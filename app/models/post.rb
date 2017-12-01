class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments, dependent: :destroy  #주인 없는애들까지 날려줌

  validates :title, presence: true
  validates :content, presence: true
end

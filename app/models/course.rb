class Course < ApplicationRecord

  validates :title, presence: true
  validates :description, presence: true

  belongs_to :users

  has_rich_text :description


  def to_s
    title
  end
end

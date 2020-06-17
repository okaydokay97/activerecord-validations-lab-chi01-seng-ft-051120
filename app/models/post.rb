class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: {minimum: 250}
  validates :summary, length: {maximum: 250}
  validates :category, inclusion: {in: %w(Fiction Non-Fiction)}
  include ActiveModel::Validations
  # validate :clickbait_title
  validates_with TitleValidator


  # def clickbait_title
  #   bait = ["Won't Believe", "Secret", "Top 10", "Guess"]
  #   found = bait.map do |b|
  #     title.include?(b)
  #   end
  #   if found.include?(true) == false
  #     errors.add(:title, "is not clickbait-y")
  #   end
  # end
end

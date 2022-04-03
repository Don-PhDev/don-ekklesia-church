class Post < ApplicationRecord
  include ActionView::Helpers::DateHelper

  belongs_to :user

  validates :title, :body, presence: true, allow_blank: false

  scope :by_recently_updated, -> { order(updated_at: :desc) }

  def posted_time_passed
    if self.updated_at - self.created_at > 1
      "Edited " + time_ago_in_words(self.updated_at) + " ago"
    else
      "Posted " + time_ago_in_words(self.created_at) + " ago"
    end
  end
end

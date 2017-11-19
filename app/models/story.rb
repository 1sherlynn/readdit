class Story < ApplicationRecord
	validates :name, :link, presence: true
	has_many :votes
	belongs_to :user

	scope :upcoming, -> { where("votes_count < 5").order("id DESC") }
	scope :popular, -> { where("votes_count >= 5").order("id DESC") }

	def to_param
	    "#{id}-#{name.gsub(/\W/, '-').downcase}"
	end

end

class Article < ActiveRecord::Base
	belongs_to :category

	# basic validation
    validates_presence_of :title
    validates_presence_of :content

    # scopes
    scope :alphabetical, -> { order('title') }
    scope :active, -> { where(active: true) }
end

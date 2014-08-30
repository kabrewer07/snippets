class Snippet < ActiveRecord::Base

  validates :language, presence: true

	belongs_to :user
	has_many :cheatsheet_snippets
	has_many :cheatsheets, through: :cheatsheet_snippets
	has_many :snippet_tags
	has_many :tags, through: :snippet_tags
end

class Post < ActiveRecord::Base

	scope :show_comment, -> { Comment.count }


	validates_presence_of :title, :body
	validates_uniqueness_of :title

	has_many :comments, :dependent => :destroy
end

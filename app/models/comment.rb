class Comment < ActiveRecord::Base
	

	scope :show_comment, -> { count }

	belongs_to :post

	


end

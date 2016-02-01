class Project < ActiveRecord::Base
	extend FriendlyId
    friendly_id :title, use: :slugged
    WillPaginate.per_page = 3
end

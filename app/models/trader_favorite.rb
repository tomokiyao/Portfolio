class TraderFavorite < ApplicationRecord

	belongs_to :user
	belongs_to :free_trader
end

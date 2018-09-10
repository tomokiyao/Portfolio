class FreeTrader < ApplicationRecord

  validates :trader_title, presence: true
  validates :trader_genre, presence: true
  validates :area, presence: true
  validates :first_term, presence: true
  validates :second_term, presence: true



	belongs_to :user

	has_many :trader_favorites, dependent: :destroy

	enum trader_genre: {
		LGS:1,クロス:2,左官:3,ガラス:4,貼床:5,荷揚:6,雑工:7,電気:8,塗装:9,大工:10,シール:11,鳶:12,置床:13,防災:14,サイン:15,サッシ:16,建具:17,デザイン:18,設計:19,施工管理:20
	}

	def favorited_by?(user)
		trader_favorites.where(user_id: user.id).exists?
	end
end

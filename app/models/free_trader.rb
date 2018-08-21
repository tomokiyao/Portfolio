class FreeTrader < ApplicationRecord

	enum trader_genre: {
		LGS:1,クロス:2,左官:3,ガラス:4,貼床:5,荷揚:6,雑工:7,電気:8,塗装:9,大工:10,シール:11,鳶:12,置床:13,防災:14,サイン:15,サッシ:16,建具:17,デザイン:18,設計:19,施工管理:20
	}
end

class Ink < ApplicationRecord
  
  belongs_to :user
  
  enum color: {"黒・灰色系": 0, "青・水色系": 1, "緑系": 2, "黄・オレンジ系": 3, "赤・ピンク系": 4, "紫系": 5, "茶色系": 6, "その他": 7 }
  
end

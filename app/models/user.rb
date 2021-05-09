class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :reports
  has_many :events
  has_many :inks, dependent: :destroy
  has_many :favorites, dependent: :destroy
  attachment :user_image
  
  def available_inks(color)
    inks.where(color: color).count.to_f / inks.count.to_f * 100
  end
  
end

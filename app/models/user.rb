class User < ActiveRecord::Base
  # validates :country, presence: true
  # validates :state, presence: true
  # validates :city, presence: true
  # validates :first_name, presence: true
  # validates :second_name, presence: true
  # validates :cell_phone, presence: true

  has_many :subscriptions
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end


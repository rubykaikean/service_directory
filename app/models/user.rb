class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :company

  after_create :create_user_id

  def create_user_id
  	company = Company.new
  	company.user_id = id
  	company.save
  end
end

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :company

  after_create :create_user_id

  JOB_POSTER = 1
  JOB_SEEKER = 2

  def create_user_id
  	company = Company.new
  	company.user_id = id
  	company.save
  end
end

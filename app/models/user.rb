class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :position
  has_many :company_users, dependent: :destroy
  has_many :companies, through: :company_users

  def position_by_company(company)
    company_users.find_by(company: company).try(:position)
  end
end

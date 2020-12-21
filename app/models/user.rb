class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :questions
  has_many :answers
  
  # before_commit :is_admin?

  # def index

  # end

  # def is_admin?
  #   redirect_to root_path if !current_user.admin?
  # end

  def username
    return self.email.split('@')[0].capitalize
  end

end

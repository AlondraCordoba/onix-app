class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum role: [:user_store, :user_distributor]
  after_initialize :set_default_role, if: :new_record?
  def set_default_role
    self.role ||= :user_store
  end
  has_many :evidences, dependent: :destroy
end

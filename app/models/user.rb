class User < ApplicationRecord
  include Devise::JWT::RevocationStrategies::JTIMatcher
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
          :jwt_authenticatable, jwt_revocation_strategy: self
          
  has_many :companies

  attribute :role, :string, default: "admin"

  # before_create :set_user_role

  ROLES = %w{super_admin admin manager editor collaborator}

  ROLES.each do |role_name|
    define_method "#{role_name}?" do
      role == role_name
    end
  end

  # def set_user_role
  #   self.role = 'admin'
  # end

  def jwt_payload
    super
  end
end

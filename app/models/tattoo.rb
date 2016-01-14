class Tattoo
  include ActiveModel::Model
  include ActiveModel::Conversion
  include ActiveModel::Validations

  attr_accessor :name, :health_conditions, :reaction, :drugs, :permanent, :infection,
                :harmless, :verified, :age, :bday, :contact, :emergency, :health_problems, :email

  validates :emergency, :email, presence: true

  validates :email, length: {maximum: 255 },
                    format: {with: Devise::email_regexp}


end

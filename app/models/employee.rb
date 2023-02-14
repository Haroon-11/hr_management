class Employee < ApplicationRecord

    has_many :documents

    validates :first_name, :address,  presence: true
    validates :email, presence: true, uniqueness: true

    def name
        "#{first_name} #{last_name}".strip
    end
    def full_address 
        "#{address} #{country} #{pincode}".strip
    end
end



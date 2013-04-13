class SecretCode < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessor :number_of_code
  belongs_to :user
  def self.generate_codes(number)
     number.values.first.to_i.times do
          secret_code = SecretCode.new
          secret_code.secret_code=rand(1000)
          secret_code.save
       end	
   end
end

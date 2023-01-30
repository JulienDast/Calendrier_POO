class User
  attr_accessor :email, :age
  @@all_users = []   

  def initialize(email_to_update, age_to_update)
    @email = email_to_update
    @age = age_to_update
    @@all_users << self
  end

  def self.all
    return @@all_users
  end
  
end



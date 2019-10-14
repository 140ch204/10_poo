#require "pry"

class User
  # on veut pouvoir créer un utilisateur, 
  # lui attribuer un e-mail et un âge, 
  # puis obtenir facilement la liste des utilisateurs.

  attr_accessor :email, :age
  @@all_users = []

  @@user_list = []

  def initialize(email_user,age_user)
    @email = email_user
    @age = age_user
    @@user_list << email_user
    @@all_users << self
  end

  def self.all
    return @@user_list
  end

  def self.find_by_email(email_searched)
    @@all_users.each do |user|
      (user.email == email_searched)? (return user) : (return nil)
    end
  end

end
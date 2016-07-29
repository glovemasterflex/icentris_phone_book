class Contact < ActiveRecord::Base
  def self.search(search)
    where("lower(name) || phone_number LIKE ?", "%#{search.downcase}%") 
  end
end

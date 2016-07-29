class Contact < ActiveRecord::Base
  def self.search(search)
    where("lower(name) || phone_number || lower(email) || lower(address) LIKE ?", "%#{search.downcase}%") 
  end
end

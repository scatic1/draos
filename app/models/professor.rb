class Professor < ApplicationRecord
	establish_connection UMS

	def self.search_professors(search)
    if search
      where(["name LIKE ?","%#{search}%"])
    else
      all 
    end
  end
end

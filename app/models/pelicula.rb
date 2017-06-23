class Pelicula < ApplicationRecord
	has_many :comentarios
	def self.search(search)
     	where("name like ?", "%" + "%#{search}%" + "%")
   	end
	def self.search_name(search_name)
    where(name: search_name)
  end

  def self.search_year(search_year)
    where(year: search_year)
  end

end

class Pelicula < ApplicationRecord
	has_many :comentarios, dependent: :destroy
	def self.search_name(search_name)
    where(name: search_name)
  end

  def self.search_year(search_year)
    where(year: search_year)
  end

end

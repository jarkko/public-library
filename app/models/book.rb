class Book < ActiveRecord::Base
  validates_presence_of :isbn, :title
  validates_uniqueness_of :isbn

  has_many :authorships
  has_many :authors, :through => :authorships

  def author_names
    authors.map{|author| author.name }.join(", ")
  end
end

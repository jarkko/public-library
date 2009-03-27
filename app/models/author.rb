class Author < ActiveRecord::Base
  validates_presence_of :first_name, :last_name

  has_many :authorships
  has_many :books, :through => :authorships
  
  def name
    "#{first_name} #{last_name}"
  end
end

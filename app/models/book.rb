class Book < ActiveRecord::Base
  validates_presence_of :isbn, :title
  validates_uniqueness_of :isbn
end

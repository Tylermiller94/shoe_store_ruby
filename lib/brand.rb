class Brand < ActiveRecord::Base
  has_and_belongs_to_many(:stores)
  before_save(:upcase_first_letter)


  define_method(:upcase_first_letter) do
    self.name =  self.name.slice(0,1).capitalize + self.name.slice(1..-1)
  end
end

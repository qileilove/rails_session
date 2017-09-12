class Cart
  include Mongoid::Document
  has_many :ideas, :dependent => :destroy
end

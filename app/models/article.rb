class Article
  include Mongoid::Document

  validates :title, presence: true

end

class Product
  include Mongoid::Document
  before_destroy :ensure_not_referenced_by_any_line_idea



  validates :title, :description, :image_url, :presence => true
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
  #
  validates :title, :uniqueness => true
  validates :image_url, :format => {
      :with    => %r{\.(gif|jpg|png)$}i,
      :multiline => true,
      :message => 'must be a URL for GIF, JPG or PNG image.'
  }
  validates :title, :length => {:minimum => 10}
  private

  def ensure_not_referenced_by_any_line_idea
    if idea.empty?
      return true
    else
      errors.add(:base, 'idea present')
      return false
    end
  end
end
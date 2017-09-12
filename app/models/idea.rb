class Idea
  include Mongoid::Document
  include Mongoid::Timestamps
  has_many :plans
  field :name ,type: String
  field :price, type: Integer
  field :picture
  field :description,type: String
  field :email,type: String

  validates_presence_of :name,  message: "can't be blank"
  validate :price_must_greate_than_zero
  validates_uniqueness_of :name, :message => "must be unique"
  validates_format_of :picture,
                      :with => %r{\.(gif|jpg|png|$)}i,
                      :message => 'must be a gif or jpeg or png'

  mount_uploader :picture, AvatarUploader

  protected
  def price_must_greate_than_zero
    errors.add(:price, "should be greate than 0") if price.nil? ||price < 0;
  end


end

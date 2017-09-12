class Plan
  include Mongoid::Document
  belongs_to :idea
end

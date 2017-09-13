class Plan
  include Mongoid::Document
  belongs_to :idea
  field :plan_name,type: String
  field :desc,type: String
end

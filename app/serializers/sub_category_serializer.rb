class SubCategorySerializer 
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :description, :amount

  belongs_to :category
end

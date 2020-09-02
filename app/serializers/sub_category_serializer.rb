class SubCategorySerializer 
  include FastJsonapi::ObjectSerializer
  attributes :id

  belongs_to :category
end

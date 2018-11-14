class ListSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :date, :number, :description
end

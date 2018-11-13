class List < ApplicationRecord
  include PgSearch
  multisearchable :against => [:name]

  def self.import(file)
     CSV.foreach(file.path, headers: true) do |row|

       list_hash = row.to_hash # exclude the price field
       list = Product.where(id: list_hash["id"])

       if list.count == 1
         list.first.update_attributes(list_hash)
       else
         Product.create!(list_hash)
       end # end if !product.nil?
     end # end CSV.foreach
   end # end self.import(file)

  def self.search(search)
  if search
    where('name ILIKE ?', "%#{search}%")
  else
    List.all
  end
end

end

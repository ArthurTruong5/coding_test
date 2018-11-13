class List < ApplicationRecord
  def self.import(file)
  CSV.foreach(file.path, headers: true) do |row|
    # If it does not work, throw an error
    List.create! row.to_hash
    end
  end

  def self.search(search)
  if search
    where('name LIKE ?', "%#{search}%")
  else
    List.all
  end
end

end

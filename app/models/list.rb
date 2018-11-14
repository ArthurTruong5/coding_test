class List < ApplicationRecord
  include PgSearch
  multisearchable against: [:name]

  # testing factory_rails valid
  validates :name, presence: true
  validates :date, presence: false
  validates :number, presence: false
  validates :description, presence: true

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      list_hash = row.to_hash # exclude the price field
      list = List.where(id: list_hash['id'])
      if list.count == 1
        list.first.update_attributes(list_hash)
      else
        List.create!(list_hash)
      end # end if !list.nil?
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

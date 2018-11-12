class List < ApplicationRecord
  def self.import(file)
  # We want to ignore the headers. We want to iterate each row after
  CSV.foreach(file.path, headers: true) do |row|
    # If it does not work, throw an error
    List.create! row.to_hash
    end
  end
end

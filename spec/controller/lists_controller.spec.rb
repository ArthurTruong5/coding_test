require 'rails_helper'
require 'capybara/rspec'


describe ListsController do
  describe "GET index" do
     let(:csv_file) { File.new(fixture_path + '/files/sentia.csv') }
     it 'import csv' do
       # TODO figure later
     end
  end
end

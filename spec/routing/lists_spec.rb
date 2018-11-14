require 'rails_helper'

describe 'lists routes to show' do
  it 'should route to lists show' do
    expect(get '/lists').to route_to('lists#show', id: 'lists')
  end

  it 'should route to lists show' do
    expect(get '/').to route_to('lists#index')
  end

  it 'should edit list' do 
   expect(get 'lists/1').to route_to('lists#edit')
  end

end

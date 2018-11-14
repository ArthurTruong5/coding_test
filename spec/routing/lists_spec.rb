require 'rails_helper'

describe 'lists routes to show' do
  it 'should route to lists show' do
    expect(get('/lists')).to route_to('lists#show', id: 'lists')
  end

  it 'should route to lists show' do
    expect(get('/')).to route_to('lists#index')
  end

  it 'routes list get edit' do
    expect(get: '/1/edit').to route_to(
      controller: 'lists',
      action: 'edit',
      id: '1'
    )
  end

  it 'routes list put update' do
    expect(put: '/1').to route_to(
      controller: 'lists',
      action: 'update',
      id: '1'
    )
  end

  it 'routes list delete destroy' do
    expect(delete: '/1').to route_to(
      controller: 'lists',
      action: 'destroy',
      id: '1'
    )
  end

  it 'routes list post create' do
    expect(post: '/').to route_to(
      controller: 'lists',
      action: 'create'
    )
  end

  it 'routes for import csv' do
    expect(post: '/import').to route_to(
      controller: 'lists',
      action: 'import'
    )
  end
end

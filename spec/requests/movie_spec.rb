# frozen_string_literal: true

require 'spec_helper'

RSpec.describe '/v1/movie' do
  it_behaves_like 'POST', params: {}
  it_behaves_like 'GET one'
  it_behaves_like 'PUT one', params: {}
  it_behaves_like 'PATCH one', params: {}
  it_behaves_like 'DELETE one'
end

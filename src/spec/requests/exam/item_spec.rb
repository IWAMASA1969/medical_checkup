require 'rails_helper'

RSpec.describe 'item', type: :request do
  let(:request_header) do
    { 'CONTENT_TYPE' => 'application/json', 'ACCEPT' => 'application/json' }
  end

  let(:hba1c) do
    '{"item_name":"HbA1c",
      "stndard_values":[
        {"from_value":4.6,"to_value":6.2,"determine_result":"A"},
        {"from_value":6.3,"to_value":7.0,"determine_result":"B"}
      ]}'
  end

  subject do
    post '/exam/items', params: hba1c, headers: request_header
  end

  it 'create exam_item' do
    expect { subject }.to change(ExamItem, :count).by(1)
  end

  it 'return 200' do
    subject
    expect(response).to be_success
  end

  it 'contain correct keys' do
    subject
    result = JSON.parse(response.body)
    expect(result).to have_key('id')
    expect(result).to have_key('item_name')
    expect(result).to have_key('stndard_values')
  end
end

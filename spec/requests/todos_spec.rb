require 'rails_helper'

RSpec.describe 'Todo API', type: :request do
  let!(:todos) { create_list(:todo, 10) }
  let(:todo_id) { todo.first.id }

  describe 'GET /todos' do
    before { get '/todos' }

    it 'returns todos' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end
  end
end

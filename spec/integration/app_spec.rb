
require "spec_helper"
require_relative '../../app'
require 'rack/test'

describe Application do
  include Rack::Test::Methods

  let(:app) { Application.new }

  context "GET /scorecard" do
    it 'returns 200 OK' do
      response = get('/scorecard')

      expect(response.status).to eq(200)
      expect(response.body).to include('<form action="/scorecard" method="POST">')
    end
  end

  context "GET /scorecard" do
    it 'returns 200 OK' do
      response = post(
        '/scorecard',
        roll1: 2,
        roll2: 2
      )

      expect(response.status).to eq(200)
      expect(response.body).to include('<p>Frame 1: 2, 2</p>')
      expect(response.body).to include('<p>Score: 4</p>')
    end
  end
end
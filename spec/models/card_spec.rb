require "rails_helper"

RSpec.describe Card, :type => :model do
  it "orders by last name" do
  card = Card.new(original_text: "durch")
  expect(card.check_translation("bsy")).to be false
  end
end
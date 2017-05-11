require "rails_helper"

RSpec.describe Card, :type => :model do
  it "orders by last name" do
    time = Time.now + 3.days
    card = Card.create!(original_text: "durch",translated_text: "by")
    expect(card.review_date.strftime("%B %d, %Y")).to eq(time.strftime("%B %d, %Y"))
  end

end
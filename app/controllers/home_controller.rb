class HomeController < ApplicationController
    def index
      @card = Card.review_date
    end
    def sub
      @cards = Card.find(params[:id])
      if @cards.translated_text === params[:translated_text]
        @tess = "Правильно"
        @cards.update_review_date
      else
        @tess = "Не правильно"
      end
    end
end
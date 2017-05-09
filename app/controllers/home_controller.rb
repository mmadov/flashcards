class HomeController < ApplicationController

  def index
      @card = Card.review_date
  end

  def sub
    @card = Card.find(params[:id])
    if @card.check_translation(params[:translated_text])
      @card.update_review_date
      flash.now[:notice] = 'Правильно'
    else 
      flash.now[:error] = \Не правильно'
    end
  end

end

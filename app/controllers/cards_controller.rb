class CardsController < ApplicationController
    def index
        @cards = Card.all
    end
 
    def new
        @card = Card.new
    end
    def edit
    @card = Card.find(params[:id])
    end
    def update
    @card = Card.find(params[:id])
    if @card.update(card_params)
    redirect_to(@card)
    else
    render "edit"
    end
    end
    def create
    @card = Card.new(card_params)
    @card.save
    redirect_to @card
    end
    def destroy
    @card = Card.find(params[:id])
    @card.destroy

    respond_to do |format|
    format.html { redirect_to(cards_url) }
    format.xml  { head :ok }
    end
    end
    def show
    @card = Card.find(params[:id])
    end
    private
    def card_params
    params.require(:card).permit(:original_text, :translated_text,:review_date)
    end
    end

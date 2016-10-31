class VoteController < ApplicationController


    def show
        @link = Vote.find(params[:id])
    end

    def up_vote
        show
        @link.votes << Vote.new(value: 1)
        redirect_to '/index.html'
    end

    def down_vote
        @link.votes << Vote.new(value: -1)
        redirect_to '/index.html'
    end

    def create
    end

end

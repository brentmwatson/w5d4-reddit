class VotesController < ApplicationController


    def show
        @link = Link.find(params[:id])
    end

    def up_vote
        @link = Link.find(params[:id])
        @link.votes << Vote.new(value: 1)
        redirect_to root_path
    end

    def down_vote
        @link = Link.find(params[:id])
        @link.votes << Vote.new(value: -1)
        redirect_to root_path
    end

    def create
    end
end

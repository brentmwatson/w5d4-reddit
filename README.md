# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


-Make a vote model with a link_id (a numerical votes column on your links table
(store votes. Either in a separate table or as just a tallied number on a link itself. Choose your own adventure there

`$ rails g model vote value: integer`
`$ rails generate migration AddLink_idToVote`
run migration


-Make a route to vote on a link.
  - route needa a param (includes ID of the link being voted on)
`get  '/vote/:id' => 'vote#up_vote', as: :upvote`

-Make a controller action that link_id points to
  -it should find the link by id
  -add a vote to that link (the way this is done differs depending on the choose your own adventure).
  -Then redirect to to root


`class ChangeProductsPrice < ActiveRecord::Migration[5.0]
  def change
    reversible do |dir|
      change_table :products do |t|
        dir.up   { t.change :price, :string }
        dir.down { t.change :price, :integer }
      end
    end
  end
end`

-Add a button for each link
  - hits that route and controller action
  - feeding the links id to the path helper (so the controller action knows what link you're voting on when you click it)


- Check that this works

- Make route to another controllerAction that does exactly the same thing as the upvote one, but redirects to the link's URL instead of the root

- links go to this new controller action instead of directly to the URL

- Check that this works

- Fill in your link form with attributes needed
  - to make a new link
  - (or edit and existing one)

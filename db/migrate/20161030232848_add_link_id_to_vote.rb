class AddLinkIdToVote < ActiveRecord::Migration[5.0]
  def change
     add_column :votes, :link_id, :integer
  end
end

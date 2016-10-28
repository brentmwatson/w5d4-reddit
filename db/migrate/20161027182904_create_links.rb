class CreateLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :links do |t|
      t.string :title
      t.string :author
      t.string :summary
      t.string :url
      t.timestamps :timestamp
    end
  end
end

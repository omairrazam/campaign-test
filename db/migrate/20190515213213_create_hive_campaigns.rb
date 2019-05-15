class CreateHiveCampaigns < ActiveRecord::Migration[5.2]
  def change
    create_table :hive_campaigns do |t|
      t.string :network
      t.integer :views
      t.integer :likes
      t.integer :subscribers
      t.string :age
      t.string :country

      t.timestamps
    end
  end
end

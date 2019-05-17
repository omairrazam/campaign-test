class AddFromToAgeToHiveCampaigns < ActiveRecord::Migration[5.2]
  def change
    add_column :hive_campaigns, :from_age, :integer
    add_column :hive_campaigns, :to_age, :integer
  end
end

class AddListingIdToConversations < ActiveRecord::Migration[5.2]
  def change
    add_column :conversations, :listing_id, :integer
  end
end

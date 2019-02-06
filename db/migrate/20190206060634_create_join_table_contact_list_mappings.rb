class CreateJoinTableContactListMappings < ActiveRecord::Migration[5.2]
  def change
    create_join_table :contacts, :contact_lists do |t|
      # t.index [:contact_id, :contact_list_id]
      # t.index [:contact_list_id, :contact_id]
    end
  end
end

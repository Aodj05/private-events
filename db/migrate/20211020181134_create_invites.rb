class CreateInvites < ActiveRecord::Migration[6.1]
  def change
    create_table :invites do |t|
      t.bigint :event_id
      t.bigint :invited_id

      t.timestamps
    end
  end
end

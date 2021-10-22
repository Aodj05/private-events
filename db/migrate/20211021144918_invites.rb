class Invites < ActiveRecord::Migration[6.1]
  def change
    t.references :event
    t.references :invitee, foreign_key: { to_table: :users }

    t.timestamps
  end
end

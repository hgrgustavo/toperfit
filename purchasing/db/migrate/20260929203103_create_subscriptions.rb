class CreateSubscriptions < ActiveRecord::Migration[8.1]
  def change
    create_table :subscriptions, id: :uuid, default: -> { "uuidv7()" } do |t|
      t.references :gym_member, null: false, foreign_key: true, type: :uuid
      t.references :plan, null: false, foreign_key: true
      t.string :payment_status
      t.datetime :starts_at
      t.datetime :expires_at

      t.timestamps
    end
  end
end

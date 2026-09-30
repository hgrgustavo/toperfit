class CreateGymMembers < ActiveRecord::Migration[8.1]
  def change
    create_table :gym_members, id: :uuid, default: -> { "uuidv7()" } do |t|
      t.string :name
      t.date :birthdate
      t.string :gender

      t.timestamps
    end
  end
end

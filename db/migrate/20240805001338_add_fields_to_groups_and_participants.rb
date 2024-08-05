class AddFieldsToGroupsAndParticipants < ActiveRecord::Migration[7.1]
  def change
    change_table :groups do |t|
      t.string :responsable
      t.string :address
      t.string :phone
      t.string :email
      t.string :discipline
      t.string :level
      t.string :title_of_music
      t.string :compositor
      t.string :length_of_piece
    end

    change_table :participants do |t|
      t.string :last_name
      t.date :birth_date
      t.integer :age
    end
  end
end

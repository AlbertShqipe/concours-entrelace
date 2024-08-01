class AddUserToFormSolos < ActiveRecord::Migration[7.1]
  def change
    add_reference :form_solos, :user, null: false, foreign_key: true
  end
end

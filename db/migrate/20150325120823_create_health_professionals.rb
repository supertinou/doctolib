class CreateHealthProfessionals < ActiveRecord::Migration
  def change
    create_table :health_professionals do |t|
      t.string :firstname
      t.string :lastname
      t.text :address

      t.timestamps null: false
    end
  end
end

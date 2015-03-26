class CreateMedicalSpecialities < ActiveRecord::Migration
  def change
    create_table :medical_specialities do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end

class CreateJoinTableBetweenMedicalSpecialitiesAndHealthProfesionnals < ActiveRecord::Migration
  def change
  	create_join_table :health_professionals, :medical_specialities, table_name: :health_professionals_specialities
  end
end

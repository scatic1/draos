class CreateProfessors < ActiveRecord::Migration[5.1]
  def change
    create_table :professors do |t|
      t.string :name
      t.string :surname
      t.integer :phone
      t.date :date_of_birth
      t.string :email
      t.string :courses
      t.string :department
      t.string :publications
      t.string :cv
      t.string :academic_history
      t.string :career_history
      t.string :image

      t.timestamps
    end
  end
end

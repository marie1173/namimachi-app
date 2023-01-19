class CreateCoaches < ActiveRecord::Migration[6.0]
  def change
    create_table :coaches do |t|
      t.string :coach_name
      t.string :coach_name_kana
      t.integer :sex_id
      t.date :coach_birthday
      t.string :homepoint
      t.string :good_point
      t.text :profile
      t.integer :course1
      t.integer :course2
      t.integer :course3
      t.integer :course4
      t.integer :course5
      t.references :user, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true
      t.text :image
      t.timestamps
    end
  end
end

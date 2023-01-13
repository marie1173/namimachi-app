class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :course_name, null: false
      t.text :course_introduction, null: false
      t.integer :price, null: false
      t.string :max_number, null: false
      t.integer :lead_time_id, null: false
      t.string :no_reply_period, null: false
      t.text :remarks, null: false
      t.timestamps
    end
  end
end

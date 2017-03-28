class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :info
      t.integer :survey_id
      t.string :type
      t.string :created_by
      t.string :updated_by
      t.timestamps
    end
  end
end

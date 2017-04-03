class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.integer :question_id
      t.string :info
      t.string :created_by
      t.string :updated_by
      t.timestamps
    end
  end
end

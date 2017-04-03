class CreateSurveyQuestionAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :survey_question_answers do |t|
      t.integer :question_id
      t.integer :survey_id
      t.integer :user_id
      t.string :response
      t.string :created_by
      t.string :updated_by
      t.timestamps
    end
  end
end

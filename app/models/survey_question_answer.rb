class SurveyQuestionAnswer < ApplicationRecord
    belongs_to :user, optional: true

    belongs_to :survey
    belongs_to :question


  def self.create_responses user_id,survey_id,question_ids,answer_ids
    question_ids.each_with_index do |question_id,index|
      sqa = SurveyQuestionAnswer.new
      sqa.survey_id = survey_id
      sqa.user_id = user_id
      sqa.question_id = question_id
      sqa.response = answer_ids[index]
      sqa.save!
    end
  end
end

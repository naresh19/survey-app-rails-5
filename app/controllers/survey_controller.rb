class SurveyController < ApplicationController
  skip_before_filter :authenticate_user!, :only => [:show,:survey_submit]

  def index
    @survey = Survey.includes(questions: :answers).all

  end

  def show
    @survey = Survey.includes(questions: :answers).find(params[:id])
  end

  def survey_submit
    user = User.create_user params[:email_id],params[:name]
    SurveyQuestionAnswer.create_responses user.id,params[:survey_id],params[:questions],params[:answers]
    redirect_to "/"
  end
end

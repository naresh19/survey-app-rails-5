class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :survey_question_answers

  def self.create_user email_id,name,password="12345678"
    user = User.create(name: name,email: email_id,password: password)
  end

  def self.current_user
    Thread.current[:current_user]
  end

  def self.current_user= user
    Thread.current[:current_user] = user
  end
end

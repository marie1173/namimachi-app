class CoachesController < ApplicationController
  def index
    @coaches = Coach.all
  end
  
  def new
    @course = Course.find(params[:course_id])
    @coach = Coach.new
  end

  def show
    @coach = Coach.find(params[:id])
  end

  def create
     @coach = Coach.new(coach_params)
    if @coach.save
       redirect_to root_path
    else
      render :new
    end
  end

  private 

  def coach_params
    params.require(:coach).permit(:coach_name,:coach_name_kana, :coach_email, :sex_id, :coach_birthday, :good_point, :profile, :course1, :course2, :course3, :course4, :course5, :image).merge(user_id: current_user.id, course_id: params[:course_id])
  end
end

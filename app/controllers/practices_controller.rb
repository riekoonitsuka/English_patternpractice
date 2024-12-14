class PracticesController < ApplicationController
  def index
    @practices = Practice.includes(:practice_part)
    @current_practice = @practices[params[:practice_index].to_i]
    if params[:practice_index].to_i >= @practices.length
      redirect_to action: :index, practice_index: 0
    else
    @next_practice_index = params[:practice_index].to_i + 1
    end
  end

  def new
    @practice = Practice.new
  end

  def create
    @practice = Practice.new(practice_params)
    if @practice.save
      redirect_to practices_path, notice: "Practice was successfully created."
    else
      render :new
    end
  end

  def show
    @practice = Practice.find(params[:id])
    @practices = Practice.all
    current_index = @practices.index(@practice)
    @next_practice_index = params[:practice_index].to_i + 1
  end

  def edit
    @practice = Practice.find(params[:id])
  end

  def update
    @practice = Practice.find(params[:id])
    if @practice.update(practice_params)
      redirect_to practice_path(@practice), notice: "Question was successfully updated."
    else
      flash.now[:danger] = "更新に失敗しました"
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @practice.destroy
    redirect_to practices_path, notice: "Question was successfully destroyed."
  end

  def practice_params
    params.require(:practice).permit(:basic_english_sentence, :basic_japanese_sentence, :question, :image, :difficulty_rating, answer)
  end
end

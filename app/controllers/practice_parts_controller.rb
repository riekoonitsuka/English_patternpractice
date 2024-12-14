class PracticePartsController < ApplicationController
  def index
    @practice_parts = PracticePart.includes(:practice).page(params[:page]).per(10) # 1ページあたり10件表示
  end

  def new
    @practice_parts = PracticePart.new
  end

  def create
    @practice_parts = PracticePart.new(practice_params)
    if @practice.save
      redirect_to practice_parts_path, notice: "Practice was successfully created."
    else
      render :new
    end
  end

  def show
    @practice_parts = PracticePart.find(params[:id])
  end

  def edit
    @practice_parts = PracticePart.find(params[:id])
  end

  def update
    @practice_parts = PracticePart.find(params[:id])
    if @practice_parts.update(practice_params)
      redirect_to practice_parts_path(@practice_parts), notice: "Question was successfully updated."
    else
      flash.now[:danger] = "更新に失敗しました"
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @practice_parts.destroy
    redirect_to practice_parts_path, notice: "Question was successfully destroyed."
  end

  def practice_part_params
    params.require(:practice_part).permit(:number, :title)
  end
end

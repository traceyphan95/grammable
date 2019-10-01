class GramsController < ApplicationController
  def new
    @gram = Gram.new
  end


  def index
  end

  def create
  if @gram.valid?
    redirect_to root_path
  else
    render :new, status: :unprocessable_entity
  end

  private

  def gram_params
    params.require(:gram).permit(:message)
  end

end

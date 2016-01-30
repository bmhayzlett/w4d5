# == Schema Information
#
# Table name: subs
#
#  id           :integer          not null, primary key
#  title        :string           not null
#  description  :text             not null
#  moderator    :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  moderator_id :integer
#

class SubsController < ApplicationController

  def index
    @subs = Sub.all
    render :index
  end

  def new
    @sub = Sub.new
    render :new
  end

  def create
    @new_sub = Sub.new(sub_params)
    if @new_sub.save
      redirect_to subs_url(@new_sub)
    else
      flash.now[:errors] = ["CAN'T CREATE SUB"]
      render :new
    end
  end

  def show
    @sub = Sub.find_by_id(params[:id])
    render :show
  end

  private

  def sub_params
    params.require(:sub).permit(:title, :moderator, :description)
  end

end

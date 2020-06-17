class InquiriesController < ApplicationController
  layout 'header_and_main'
  def new
    @inquiry = Inquiry.new
  end

  def create
    @inquiry = Inquiry.new(inquiry_params)

    if @inquiry.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
    def inquiry_params
      params.require(:inquiry).permit(:name, :email, :title, :message)
    end
end

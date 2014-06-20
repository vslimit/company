class CompanyInfosController < ApplicationController
  def index
    @company_infos = CompanyInfo.all
  end

  def new
    @company_info = CompanyInfo.new
  end

  def show
    @company_info = CompanyInfo.find(params[:id])
  end


  def create
    @company_info = CompanyInfo.new(company_info_params)
    if @company_info.save
      flash[:notice] = 'Company has been created.'
      redirect_to @company_info
    else
      flash[:alert] = 'Company has not been created.'
      render 'new'
    end
  end

  def edit
    @company_info = CompanyInfo.find(params[:id])
  end

  def update
    @company_info = CompanyInfo.find(params[:id])
    if @company_info.update(company_info_params)
      flash[:notice] = 'Company has been updated'
      redirect_to @company_info
    else
      flash[:alert] = 'Company has not been updated'
      render 'edit'
    end

  end


  def destroy
    @company_info = CompanyInfo.find(params[:id])
    @company_info.destroy
    flash[:notice] = 'Company has been destroyed.'
    redirect_to company_infos_path
  end

  private
  def company_info_params
    params.require(:company_info).permit(:name, :description)
  end
end

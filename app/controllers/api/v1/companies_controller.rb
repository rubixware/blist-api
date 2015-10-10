class Api::V1::CompaniesController < ApplicationController
  before_action :company_authenticate_with_token!, only: [:create]
  respond_to :json

  def index
    respond_with Company.for_index(params)
  end

  def show
    respond_with Company.find(params[:id])
  end


  def create
    company = Company.new(company_params)
    if company.save
      render json: company, status: 201, location: [:api, company]
    else
      render json: { errors: company.errors }, status: :unprocessable_entity
    end
  end

  def update
    company = Company.find(params[:id])
    if company.update(company_params)
      render json: company, status: 200, location: [:api, company]
    else
      render json: { errors: company.errors }, status: :unprocessable_entity
    end
  end
  private

    def company_params
      params.require(:company).permit(:email, :password, :password_confirmation)
    end

end

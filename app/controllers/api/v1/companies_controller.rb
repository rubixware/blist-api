class Api::V1::CompaniesController < ApplicationController

  respond_to :json

  def show
    respond_with Company.find(params[:id])
  end


end

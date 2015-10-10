class Api::V1::SessionsController < ApplicationController

  def create
    status, data = Company.session_or_error(session_params)
    render response_opts(status, data)
  end

  private
    def session_params
      if params[:session].present?
        params.require(:session).permit(:email,:password)
      else
        {invalid: true}
      end
    end

end

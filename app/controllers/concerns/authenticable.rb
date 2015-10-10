module Authenticable

  def current_company
    @current_company ||= Company.find_by(auth_token: request.headers["Authorization"])
  end

  def pluck_auth token
   Company.where(auth_token: token).pluck(:id,:auth_token)[0]
  end

  def company_authenticate_with_token!
   authenticate_with_token! unless current_company.present?
  end

  def company_signed_in?
   current_company.present?
  end

  def authenticate_with_token!
    render json: { error: "Usuario/contraseña invalidos" }, status: :unauthorized
  end

end

module Sessionable

  def session_or_error(params)
    if params[:invalid].present?
      invalid_info(params)
    else
      find_and_validate(params)
    end
  end

  def find_and_validate(params)
    model = find_by(email: params[:email])
    if model.nil?
      invalid_info(params)
    else
      validate_session(model,params)
    end
  end

  def validate_session(model,params)
    if model.valid_password?(params[:password])
      [200, { auth_token: model.save_with_new_token! }]
    else
      invalid_info(params)
    end
  end

  def invalid_info(params)
    logger.fatal("Invalid Auth for ID=#{params[:email]}  PASS=#{params[:password]}")
    data = {errors: [{message: "Credenciales invalidas", code: " ¯\\_(ツ)_/¯ " }]}
    [422, data]
  end

end

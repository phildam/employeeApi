module Common

  def json_render(model="No data", status="ok", message="confirmation accepted", httpstatus=:ok)
    render json: {status: status, message: message,data: model}, status: httpstatus
  end

end
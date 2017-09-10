class HealthController < ApiController

  before_action :authenticate_user!, only: [:authenticated_status]

  def status
    @ok = true
  end

  def authenticated_status
    @user_data = {id: current_user.id}
  end
end

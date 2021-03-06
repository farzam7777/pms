class UsersController < ApplicationController
  def set_profile_picture
    if current_user.update(photo_params)
      redirect_to edit_user_registration_path, notice: 'Profile picture is successfully updated'
    else
      redirect_to edit_user_registration_path, alert: 'Photo must be Selected.'
    end
  end
  
  private
    def photo_params
      params.require(:user).permit(photo_attributes: [:data, :id])
    end
end

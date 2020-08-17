class AccountController < ApplicationController
  def edit
    @user = User.first
  end

  def update
    redirect_to account_path
  end

  private
    def account_params
      params.require(:account).permit()
    end

end

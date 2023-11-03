class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @message = "Bem vindo ao CLUBE-PASS!"
    render 'home'
  end
end

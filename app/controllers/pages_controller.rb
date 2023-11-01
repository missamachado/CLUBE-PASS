class PagesController < ApplicationController
  def home
    @message = "Bem vindo ao CLUBE-PASS!"
    render 'home'
  end
end

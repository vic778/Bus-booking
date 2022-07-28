class PagesController < ApplicationController
  def home
    @agences = Agence.all
  end
end

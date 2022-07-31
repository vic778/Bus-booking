class PagesController < ApplicationController
  def home
    @buses = Bus.all
  end
end

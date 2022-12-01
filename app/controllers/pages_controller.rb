class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @orders = Order.includes([:customer]).first(100)
  end
end

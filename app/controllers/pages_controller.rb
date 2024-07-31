class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :regulation, :media, :who_are_we, :practical_info, :contact, :our_partners ]

  def home
  end

  def regulation
  end

  def media
  end

  def who_are_we
  end

  def practical_info
  end

  def contact
  end

  def our_partners
  end

  def apply
  end
end

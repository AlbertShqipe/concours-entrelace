class FormSolosController < ApplicationController
  before_action :authenticate_user!
  def index
    @form_solos = FormSolo.all
  end
  def new
    @form_solo = FormSolo.new
  end

  def create
    year = params.dig(:form_solo, 'birth_date(1i)')
    month = params.dig(:form_solo, 'birth_date(2i)')
    day = params.dig(:form_solo, 'birth_date(3i)')

    birth_date = Date.new(year.to_i, month.to_i, day.to_i) if year && month && day
    @form_solo = FormSolo.new(form_solo_params.merge(birth_date: birth_date))
    @form_solo = current_user.form_solos.new(form_solo_params)
    if @form_solo.save
      redirect_to root_path, notice: 'Form was successfully submitted.'
    else
      render :new
    end
  end

  def form_solo_params
    params.permit(:first_name, :last_name, :birth_date, :address, :phone, :email, :teacher_name, :dance_school, :teacher_phone, :teacher_email, :category, :style, :level)
  end
end

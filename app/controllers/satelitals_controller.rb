class SatelitalsController < ApplicationController

  def index
    @satelitals = Satelital.all
    unless Satelital.last == nil
      @table = Satelital.last[:satelital_array]
    end
  end

  def show
    @satelital = Satelital.find(params[:satelital][:id])
    rescue => e
     flash[:error] = "Escoja un reporte válido."
     redirect_to ppmreports_ppmroutes_path
  end

  def create
    @satelitals = Satelital.all
    @satelital = Satelital.create(:satelital_array => Satelital.capacidad_table)
    if @satelital.save
      @satelital.created_at.in_time_zone('Eastern Time (US & Canada)')
      flash[:notice] = "Reporte actualizado y almacenado."
      redirect_to '/satelitalreports/satelitals'
      if @satelitals.count > 100
        @satelitals.first.delete
      end
    end
  end

end
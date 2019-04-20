class LinksController < ApplicationController
  before_action :authenticate_user!, except: [:show, :index, :index_estado]
  before_action :set_link, except: [:index, :index_estado, :new, :create]
  #GET /links
  def index
    @links = Link.all
  end

  #GET /links/:id
  def show
    
  end

  #GET /links/new
  def new
    @link = Link.new
  end

  #POST /links
  def create
    @link = current_user.links.new(link_params)
    if @link.save
      redirect_to @link
    else
      render :new
    end
  end

  #UPDATE /links/:id
  def destroy
    @link.destroy
    redirect_to links_path
  end

  #UPDATE /links/:id
  def edit
    
  end

  def index_estado
    @index_estado = Link.where(Estado: "Operativo")
  end

  def update
    if @link.update(link_params)
      redirect_to @link
    else
      render :edit
    end
  end

  private

  def set_link
      @link = Link.find(params[:id])
  end

  def link_params
    params.require(:link).permit(:Provedor_Enlace,:Red_Satelital,:Razon_Social,:Codigo,:Site,
                  :Nombre_Enlace,:CID,:Sector_Red,:Estado,:Satelite,:Tipo,:Capacidad_Mbps,:Capacidad_Mhz)
  end
end
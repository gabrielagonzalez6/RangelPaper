class GalleriesController < ApplicationController
  before_action :set_gallery, only: [:show, :edit, :update, :destroy]

  layout 'admin'

  # GET /galleries
  # GET /galleries.json
  def index
    @galleries = Gallery.all
    @gallery_images = GalleryImage.all
  end

  # GET /galleries/1
  # GET /galleries/1.json
  def show
    @gallery_images = GalleryImage.where(gallery_id: params[:id])
  end

  # GET /galleries/new
  def new
    @gallery = Gallery.new
    @gallery_images = @gallery.gallery_images.build
  end

  # GET /galleries/1/edit
  def edit
  end

  # POST /galleries
  # POST /galleries.json
  def create
    @gallery = Gallery.new(gallery_params)

    respond_to do |format|
      if @gallery.save
        
        params[:gallery_images]['image'].each do |a|
          @gallery_images = @gallery.gallery_images.create!(:image => a,     :gallery_id => @gallery.id)
       end

        format.html { redirect_to @gallery, notice: 'Galeria creada exitosamente.' }
        format.json { render :show, status: :created, location: @gallery }
      else
        format.html { render :new }
        format.json { render json: @gallery.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /galleries/1
  # PATCH/PUT /galleries/1.json
  def update

    respond_to do |format|
      if @gallery.update(gallery_params)
        format.html { redirect_to @gallery, notice: 'Gallery was successfully updated.' }
        format.json { render :show, status: :ok, location: @gallery }
      else
        format.html { render :edit }
        format.json { render json: @gallery.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /galleries/1
  # DELETE /galleries/1.json
  def destroy
    @gallery.destroy
    respond_to do |format|
      format.html { redirect_to galleries_url, notice: 'Galeria eliminada exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gallery
      @gallery = Gallery.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gallery_params
      params.require(:gallery).permit(:status, :model_id, gallery_images_attributes: [:id, :gallery_id, :image])
    end
end

class Admin::HomeController < ApplicationController
  
  layout 'admin'

  def index
  	@models = Model.where(name: 'Inicio')
    @galleries = Gallery.where(model_id: @models.ids)
    @gallery_images = GalleryImage.where(gallery_id: @galleries.ids)
  end

end

class HomeController < ApplicationController
  
  layout 'application'

  def index
    @models = Model.where(name: 'Inicio')
    @galleries = Gallery.where(model_id: @models.ids)
    @gallery_images = GalleryImage.where(gallery_id: @galleries.ids)
  end

  def Q_and_A
  	@contact = Contact.new
  	@questions = Question.all
  end

  def login
  	@categories = Category.all
  end

  def childish
    @categories = Category.all
  end

end

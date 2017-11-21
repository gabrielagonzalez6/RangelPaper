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
    @models = Model.where(name: 'Infantiles')
    @galleries = Gallery.where(model_id: @models.ids)
    @gallery_images = GalleryImage.all
  end

  def printable
    @categories = Category.all
    @models = Model.where(name: 'Imprimibles')
    @galleries = Gallery.where(model_id: @models.ids)
    @gallery_images = GalleryImage.all
  end

  def accessories
    @categories = Category.all
    @models = Model.where(name: 'Complementos')
    @galleries = Gallery.where(model_id: @models.ids)
    @gallery_images = GalleryImage.all
  end

  def articles
    @categories = Category.all
    @models = Model.where(name: 'Articulos de Madera')
    @galleries = Gallery.where(model_id: @models.ids)
    @gallery_images = GalleryImage.all
  end

  def adult
    @categories = Category.all
    @models = Model.where(name: 'Adultos')
    @galleries = Gallery.where(model_id: @models.ids)
    @gallery_images = GalleryImage.all
  end

  def boxes
    @categories = Category.all
    @models = Model.where(name: 'Cajitas')
    @galleries = Gallery.where(model_id: @models.ids)
    @gallery_images = GalleryImage.all
  end

  def gifts
    @categories = Category.all
    @models = Model.where(name: 'Regalos de Salida')
    @galleries = Gallery.where(model_id: @models.ids)
    @gallery_images = GalleryImage.all
  end

  def memories
    @categories = Category.all
    @models = Model.where(name: 'Recuerditos')
    @galleries = Gallery.where(model_id: @models.ids)
    @gallery_images = GalleryImage.all
  end

  def others
    @categories = Category.all
    @models = Model.where(name: 'Otros Eventos')
    @galleries = Gallery.where(model_id: @models.ids)
    @gallery_images = GalleryImage.all
  end

  def wedding
    @categories = Category.all
    @models = Model.where(name: 'Boda')
    @galleries = Gallery.where(model_id: @models.ids)
    @gallery_images = GalleryImage.all
  end

end

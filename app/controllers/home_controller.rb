class HomeController < ApplicationController
  
  layout 'application'

  def index
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

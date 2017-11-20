class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :update, :destroy]

  layout "application"

  # GET /contacts
  # GET /contacts.json
  def index
    @contacts = Contact.all
    render layout: "admin"
  end

  # GET /contacts/1
  # GET /contacts/1.json
  def show
    render layout: "admin"
  end

  # GET /contacts/new
  def new
    @categories = Category.all
    @contact = Contact.new
  end

  # # GET /contacts/1/edit
  # def edit
  # end

  # POST /contacts
  # POST /contacts.json
  def create
    @contact = Contact.new(contact_params)
    @categories = Category.all

    respond_to do |format|
      if @contact.save
        format.html { redirect_to new_contact_url, notice: 'Mensaje enviado.' }
        format.json { render :new, status: :created, location: @contact }
      else
        format.html { render :new }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contacts/1
  # PATCH/PUT /contacts/1.json
  # def update
  #   respond_to do |format|
  #     if @contact.update(contact_params)
  #       format.html { redirect_to @contact, notice: 'Contact was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @contact }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @contact.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # DELETE /contacts/1
  # DELETE /contacts/1.json
  def destroy
    @contact.destroy
    respond_to do |format|
      format.html { redirect_to contacts_url, notice: 'Mensaje eliminado exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      params.require(:contact).permit(:name, :lastname, :phone, :email, :message)
    end
end

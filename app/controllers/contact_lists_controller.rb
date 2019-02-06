class ContactListsController < ApplicationController
  before_action :set_contact_list, only: [:show, :update, :destroy]

  # GET /contact_lists
  def index
    @contact_lists = ContactList.all
    render json: @contact_lists.to_json(:include => [:contacts] )
  end

  # GET /contact_lists/1
  def show
    render json: @contact_list.to_json(:include => [:contacts] )
  end

  # POST /contact_lists
  def create
    @contact_list = ContactList.new(contact_list_params)
    if @contact_list.save
      add_contact_lists_contacts(@contact_list, params[:contact_ids])
      render json: @contact_list, status: :created, location: @contact_list
    else
      render json: @contact_list.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /contact_lists/1
  def update
    if @contact_list.update(contact_list_params)
      @contact_list.contact_lists_contacts.delete_all
      add_contact_lists_contacts(@contact_list, params[:contact_ids])
      render json: @contact_list
    else
      render json: @contact_list.errors, status: :unprocessable_entity
    end
  end

  # DELETE /contact_lists/1
  def destroy
    @contact_list.contact_lists_contacts.delete_all
    @contact_list.destroy
  end

  def add_contact_lists_contacts(contact_list, contact_ids)
    contact_ids = contact_ids.split ","
    contact_ids.each do |contact_id|
      contact = Contact.find(contact_id)
      contact_list.contact_lists_contacts.create(contact: contact)
    end   
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact_list
      @contact_list = ContactList.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def contact_list_params
      params.require(:contact_list).permit(:name)
    end
end

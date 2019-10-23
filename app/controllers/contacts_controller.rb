class ContactsController < ApplicationController

    def new
        @contact = Contact.new
    end

    def create
        @contact = Contact.new(contact_params)
        @contact.save
        redirect_to apps_path
    end

    private

    def contact_params
        params.require(:contact).permit(:title, :mail, :body)
    end
end

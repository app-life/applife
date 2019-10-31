class Admins::ContactsController < ApplicationController
    before_action :authenticate_admin!

    def index
        @contacts = Contact.all
    end

    def show
        @contacts = Contact.find(params[:id])
    end

        def destroy
        @contacts = Contact.find(params[:id])
        @contacts.destroy
        redirect_to admins_contacts_path
    end
end
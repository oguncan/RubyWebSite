class ContactsController < ApplicationController
    def index
    end
    def new
        @contact=Contact.new
    end
    
    def create
        @contact=Contact.new(params[:contact])
        @contact.request = request
        if @contact.deliver
            flash.now[:error] = nil
        else
            flash.now[:error] = "Mesaj gönderilemedi"
            render :new
        end
        
    end
end

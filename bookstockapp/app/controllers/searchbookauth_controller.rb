class SearchbookauthController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
    b = Book.where('bookauthor': params[:bookauthor])
    if !b.nil?
     render json:b       
    else
        render json: "DATA NOT FOUND"
    end
end
end
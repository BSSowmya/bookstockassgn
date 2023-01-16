class BookController < ApplicationController
    skip_before_action :verify_authenticity_token
def index
    v = Book.all
    render json: v
end

def show
    bol = Book.exists?(params[:id])
    if bol
    v = Book.find(params[:id])
    render json:v
    else
    render json: "RECORD NOT FOUND"
    end
end

def create
v = !params[:bookname] and !params[:bookauthor] and !params[:bookquantity]
puts params[:bookname]
if !v
b = Book.create('bookname': params[:bookname],'bookauthor': params[:bookauthor],'bookquantity': params[:bookquantity])
render json: "DATA RECORDED"
else 
render json: "DATA NOT RECORDED"
end
end

def update
    bol = Book.exists?(params[:id])
    if bol
        b = Book.find_by_id(params[:id])
        b.update('bookname': params[:bookname],'bookauthor': params[:bookauthor],'bookquantity': params[:bookquantity])
        render json: "DATA UPDATED"
    else
        render json: "DATA NOT FOUND"
    end
end

def destroy
    bol = Book.exists?(params[:id])
    if bol
         b = Book.find_by_id(params[:id])
        b.destroy
        render json: "DATA DELETED"
    else
        render json: "DATA NOT FOUND"
    end
end
end

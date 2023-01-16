class SearchbooknameController < ApplicationController
skip_before_action :verify_authenticity_token
def index
b = Book.find_by('bookname': params[:bookname])
if !b.nil?
    render json:b
else
    render json: "DATA NOT FOUND"
end
end

end

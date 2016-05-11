class ListsController < ApplicationController
before_action :authenticate_user!
before_action :check_user, only: [:new, :create]
def index
	@lists = List.all
	
end
def search
@text = params[:text]
@lists = List.where("institute LIKE ?", "%#{@text}%")

render 'index'
end
def show
end
def new
	@list = List.new
end
def create
	@list = List.create(lists_param)
	if @list.save
	redirect_to lists_path
	else
	render("new")
end
end
	def edit
	@list = List.find(params[:id])
end
def destroy
	@list = List.find(params[:id])
	@list.destroy
	redirect_to lists_path
end
private
def lists_param
	params.require(:list).permit(:institute ,:course  ,:duration ,:fee)
end

def check_user
	if current_user && current_user.user_type == "Institute"
	else
		redirect_to root_url
	end
end
end


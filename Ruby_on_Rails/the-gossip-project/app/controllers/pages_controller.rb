class PagesController < ApplicationController

def team
end

def contact
end

def show
	@name = params[:user_entry].inspect
end

def gossip
	@gossip = Gossip.find(params[:id])
end

def auteur
	@auteur = User.find(params[:id])
end

end
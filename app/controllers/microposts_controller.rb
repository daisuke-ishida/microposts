class MicropostsController < ApplicationController
    before_action :logged_in_user, only: [:create]
    
    def create
        @microposts = current_user.microposts.build(microposts_params)
        if microposts.save
            flash[:success] = "Microposts created!"
            
end

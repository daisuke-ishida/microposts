class MicropostsController < ApplicationController
    before_action :logged_in_user, only: [:create]
    
    def create
        @microposts = current_user.microposts.build(microposts_params)
        if microposts.save
            flash[:success] = "Microposts created!"
            redirect_to root_url
        else
            render 'static_pages/home'
        end
    end
    
    private
    def microposts_params
        params.reqire(:microposts).permit(:content)
    end
end

class ApplicationController < ActionController::Base
    before_action :login_user

    def login_user
        if session[:user_id]
            @login_user = User.find_by(id: session[:user_id])
        end
    end

    def set_login
        if @login_user
            redirect_to("/")
        end
    end

    def no_login
        if @login_user == nil
            redirect_to(login_path)
        end
    end
end

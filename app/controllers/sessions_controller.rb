class SessionsController < ApplicationController
    def new
    end

    def create
        user = User.find_by(email: params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])
          session[:user_id] = user.id
          flash[:success] = "Bienvenido de nuevo #{user.first_name}"
          redirect_to user_path(user)
        else
          flash.now[:danger] = "Correo o Contraseña incorrectos"
          redirect_to root_path
        end
    end
      
    def destroy
        session[:user_id] = nil
        flash[:success] = "Te has desconectado. Hasta la proxima!"
        redirect_to root_path
    end

end

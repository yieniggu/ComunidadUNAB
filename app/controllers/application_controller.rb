class ApplicationController < ActionController::Base
    # Los metodos creados aqui quedan disponibles para todos los controladores
    protect_from_forgery with: :exception
    
    # Los helpers disponibilizan los metodos a todas las vistas
    helper_method :current_user, :logged_in?, :is_current_user?

    def current_user
        # Retorna el usuario si es que existe una sesion (@ evita que se pegue a la base de datos multiples veces)
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    # Valida si es que hay un usuario logeado
    def logged_in?
        !!current_user
    end

    # Verifica si el usuario de la sesion actual es el mismo que el de la vista a mostrar
    def is_current_user?(user)
        if !logged_in?
            return false
        else 
            current_user.id == user.id ? true : false
        end
    end

    def require_user
        # Verifica si hay un usuario logeado y redirije si no
        if !logged_in?
            redirect_to root_path
        end
    end
end

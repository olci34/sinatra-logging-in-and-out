# require 'sinatra/base'
class Helpers

    def self.current_user(session)
        user_id = session[:user_id]
        user = User.find(user_id)
    end

    def self.is_logged_in?(session)
        !!session[:user_id]
    end

end
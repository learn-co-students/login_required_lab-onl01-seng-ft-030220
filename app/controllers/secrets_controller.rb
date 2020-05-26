class SecretsController < ApplicationController
    def show
        if !session[:name].present?
            redirect_to "/sessions/new"
        end
    end
end
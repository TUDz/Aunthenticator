class MainController < ApplicationController
    def hello
    end
    def hi
    end
    def greetings
        @nombre = params[:name]
    end
end 
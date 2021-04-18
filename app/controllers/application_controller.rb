class ApplicationController < ActionController::Base
    def hello
        render html: "Hello, to the Micro Post Site!!"
    end
end

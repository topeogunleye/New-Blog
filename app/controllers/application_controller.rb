class ApplicationController < ActionController::Base

#   Create a method called current_user in your ApplicationController to make current user data available to all controllers.
# It will return the first user from the database.

def current_user
  @current_user ||= User.first
end

end

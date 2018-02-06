class SessionsController < ApplicationController
 
   def login
   end

 end
 
   def create
     techers = Teacher.find_by(email: params[:email])
 
     if techers && techers.authenticate(params[:password])
       session[:user_id] = techers.id
       redirect_to '/'
     else
       render :new
     end
 
   end
 

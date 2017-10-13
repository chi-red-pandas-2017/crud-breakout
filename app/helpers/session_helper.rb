def current_user
  @current_user ||= User.find_by(id: session[:user_id])
end

def logged_in?
  session[:user_id] != nil
end

def redirect_if_not_logged_in
  redirect '/sessions/new' unless logged_in?
end

def redirect_if_not_owner(user)
  redirect '/not_authorized' unless owner?(user)
end

def owner?(user)
  current_user == user
end

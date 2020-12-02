module ApplicationHelper
  def isAdmin?
    if user_signed_in?
      return current_user.isAdmin
    end
    false
  end
end

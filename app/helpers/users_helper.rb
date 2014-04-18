module UsersHelper
  # Determines whether or not a given 
  # user is a buddy of the current user
  def buddy?(user)
    buddy = user
    buddies = current_user.buddies
    return buddies.include?(buddy)
  end

  # Determines whether or not the current 
  # user is buddied by a given user
  def buddied_by?(user)
    buddies = user.buddies
    return buddies.include?(current_user)
  end
end

module PostsHelper
  def buyBtn(post)
    if Buy.where(post_id: post).first
      return false
    else
      return true
    end
  end
  def check_images(images)
    if images.present?
      images
    else
      return "empty.jpg"
    end
  end
end

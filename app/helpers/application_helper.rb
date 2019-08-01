module ApplicationHelper
  def get_visibility_status visible
    status=visible== true ? "published" : "draft"
  end
end

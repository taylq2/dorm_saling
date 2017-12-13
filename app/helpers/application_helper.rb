module ApplicationHelper
  def full_title page_title = ""
    base_title = t "title_t"
    return base_title if page_title.empty?
    base_title + " | " + page_title
  end

  def area_choices
    Area.pluck :name, :id
  end

  def category_choices
    Category.pluck :name, :id
  end

  def status_choice
    Order.statuses.keys.map{|status| [t("#{status}"), status]}
  end
end

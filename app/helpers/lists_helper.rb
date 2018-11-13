module ListsHelper
  def sort_link(column, title = nil)
   title ||= column.titleize
   direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
   icon = sort_direction == "asc" ? "fas fa-chevron-up" : "fas fa-chevron-down"
   icon = column == sort_column ? icon : ""
   link_to("#{title} <i class='#{icon}'></i>".html_safe, params.permit(:name, :date, :number, :description).merge(:sort => column, :direction => direction), remote: true)
   # link_to("#{title} <i class='#{icon}'></i>".html_safe,lists_path(anchor: "my-table"))
 end
end

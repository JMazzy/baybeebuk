module ApplicationHelper

  def rails_flash_to_bootstrap_class(rails_flash)
    case rails_flash
    when "notice"
      return "success"
    when "alert"
      return "danger"
    else
      return rails_flash
    end
  end

  def formatted_date(date)
    date.strftime("%B %e, %Y")
  end
end

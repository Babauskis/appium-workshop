class FilterTest
  def initialize(pages, filters)
    @pages = pages
    @filters = filters
  end

  def close_intro
    @pages.page_intro.close_intro_if_visible
    @pages.page_create_filter.visible?
  end

  def open_filter_params_tr
    @pages.page_create_filter.open_category(@filters.transports.cat)
    @filters.transports.sub_cats.each do |sub_cat|
      @pages.page_sub_category.open_sub_category(sub_cat)
    end
    @pages.page_paremeters.visible?
  end

  def open_filter_params_va
    @pages.page_create_filter.open_category(@filters.vakances.cat)
    @filters.vakances.sub_cats.each do |sub_cat|
      @pages.page_sub_category.open_sub_category(sub_cat)
    end
    @pages.page_paremeters.visible?
  end

  def open_filter_params_ne
    @pages.page_create_filter.open_category(@filters.nekustamie.cat)
    @filters.nekustamie.sub_cats.each do |sub_cat|
      @pages.page_sub_category.open_sub_category(sub_cat)
    end
    @pages.page_paremeters.visible?
  end

  def set_filter_params_tr
    @pages.page_paremeters.set_name(@filters.transports.name)
    @filters.transports.params.each do |param|
      @pages.page_paremeters.set_parameter(param)
    end
  end

  def set_filter_params_va
    @pages.page_paremeters.set_name(@filters.vakances.name)
    @filters.vakances.params.each do |param|
      @pages.page_paremeters.set_parameter(param)
    end
  end

  def set_filter_params_ne
    @pages.page_paremeters.set_name(@filters.nekustamie.name)
    @filters.nekustamie.params.each do |param|
      @pages.page_paremeters.set_parameter(param)
    end
  end

  def submit_filter_tr
    set_filter_params_tr
    @pages.page_paremeters.save_filter
  end

  def submit_filter_ne
    set_filter_params_tr
    @pages.page_paremeters.save_filter
  end

  def submit_filter_va
    set_filter_params_tr
    @pages.page_paremeters.save_filter
  end

  def close_buy_filter_popup
    @pages.page_buy_popup.visible?
    @pages.page_buy_popup.close_pay_window
  end

  def open_search_filters
    @pages.page_create_filter.menu_section
    @pages.page_menu_section.visible?
    @pages.page_menu_section.menu_title_category("Meklēšanas filtri")
  end

  def open_existing_filter
    @pages.page_search_filters.visible?
    @pages.page_search_filters.open_filter(@filter.name)
  end

  def delete_filter
    @pages.page_page_existing_filter.visible?
    @pages.page_page_existing_filter.del_filter_btn
    @pages.page_delete_filter.visible?
    @pages.page_delete_filter.delete_filter
  end
end
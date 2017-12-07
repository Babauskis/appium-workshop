class Pages
  def page_intro
    @page_intro ||= IntroPage.new
    @page_intro
  end

  def page_create_filter
    @page_create_filter ||= CreateFilterPage.new
    @page_create_filter
  end

  def page_sub_category
    @page_sub_category ||= SubCategoryPage.new
    @page_sub_category
  end

  def page_paremeters
    @page_paremeters ||= ParametersPage.new
    @page_paremeters
  end

  def page_buy_popup
    @page_buy_popup ||= PopupPage.new
    @page_buy_popup
  end

  def page_delete_filter
    @page_delete_filter ||= DeleteFilterPage.new
    @page_delete_filter
  end

  def page_existing_filter
    @page_existing_filter ||= ExistingFilterPage.new
    @page_existing_filter
  end

  def page_menu_section
    @page_menu_section ||= MenuSectionPage.new
    @page_menu_section
  end

  def page_edit_filter
    @page_edit_filter ||= EditFilterPage.new
    @page_edit_filter
  end
end
class ElementGroup
  attr_accessor :value
  def initialize(type, value)
    @value = Hash[:type => type, :value => value]
  end

  def visible?
    $driver.wait { $driver.find_element(@value[:type], @value[:value]).displayed? }
  end

  def any?
    $driver.find_elements(@value[:type], @value[:value]).any?
  end

  def list
    $driver.find_elements(@value[:type], @value[:value])
  end

  def find_by_text(text)
    element_by_text = ''
    element_array = $driver.find_elements(@value[:type], @value[:value])
    if element_array.any?
      element_array.each do |element|

        if element.text == text
          element_by_text = element
          break
        end
      end
    else
      raise 'No element located by locator'
    end
    raise "No element found by text:#{text}" if element_by_text == ''
    return element_by_text
  end

  def click_by_text(text)
    find_by_text(text).click
  end

  def find_child_elements(element)
    $driver.find_element(@value[:type], @value[:value]).find_elements(element.value[:type], element.value[:value])
  end

  def find_child_element(element)
    $driver.find_element(@value[:type], @value[:value]).find_elements(element.value[:type], element.value[:value])
  end

  def scroll_to_exact(text)
    $driver.scroll_to_exact(text)
  end

end
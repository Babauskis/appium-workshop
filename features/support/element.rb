class Element
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

  def click
    $driver.find_element(@value[:type], @value[:value]).click
  end

  def send_keys(keys)
    $driver.find_element(@value[:type], @value[:value]).send_keys(keys)
  end

  def find_sub_element(element)
    $driver.find_element(@value[:type], @value[:value]).find_element(element.value[:type], element.value[:value])
  end
end

# [:==, :[], :eql?, :inspect, :size, :hash, :name, :first, :clear, :value, :text, :enabled?, :label, :rect, :all, :type, :attribute, :location, :ref, :style, :to_json, :as_json, :tag_name, :send_keys, :click, :property, :send_key, :selected?, :displayed?, :submit, :css_value, :location_once_scrolled_into_view, :location_rel, :find_element, :find_elements, :methods, :singleton_methods, :protected_methods, :private_methods, :public_methods, :to_yaml, :to_yaml_properties, :psych_to_yaml, :instance_of?, :kind_of?, :is_a?, :tap, :public_send, :ai, :remove_instance_variable, :singleton_method, :instance_variable_set, :define_singleton_method, :method, :public_method, :extend, :to_enum, :enum_for, :gem, :<=>, :===, :=~, :!~, :respond_to?, :freeze, :object_id, :send, :display, :awesome_inspect, :to_s, :awesome_print, :nil?, :class, :singleton_class, :clone, :dup, :itself, :taint, :tainted?, :untaint, :untrust, :untrusted?, :trust, :frozen?, :instance_variable_get, :instance_variables, :instance_variable_defined?, :!, :!=, :__send__, :equal?, :instance_eval, :instance_exec, :__id__, :should, :should_not][:==, :[], :eql?, :inspect, :size, :hash, :name, :first, :clear, :value, :text, :enabled?, :label, :rect, :all, :type, :attribute, :location, :ref, :style, :to_json, :as_json, :tag_name, :send_keys, :click, :property, :send_key, :selected?, :displayed?, :submit, :css_value, :location_once_scrolled_into_view, :location_rel, :find_element, :find_elements, :methods, :singleton_methods, :protected_methods, :private_methods, :public_methods, :to_yaml, :to_yaml_properties, :psych_to_yaml, :instance_of?, :kind_of?, :is_a?, :tap, :public_send, :ai, :remove_instance_variable, :singleton_method, :instance_variable_set, :define_singleton_method, :method, :public_method, :extend, :to_enum, :enum_for, :gem, :<=>, :===, :=~, :!~, :respond_to?, :freeze, :object_id, :send, :display, :awesome_inspect, :to_s, :awesome_print, :nil?, :class, :singleton_class, :clone, :dup, :itself, :taint, :tainted?, :untaint, :untrust, :untrusted?, :trust, :frozen?, :instance_variable_get, :instance_variables, :instance_variable_defined?, :!, :!=, :__send__, :equal?, :instance_eval, :instance_exec, :__id__, :should, :should_not]
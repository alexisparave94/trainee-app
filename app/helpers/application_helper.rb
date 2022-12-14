# frozen_string_literal: true

# Module for Application Helpers
module ApplicationHelper
  def decorate(object, klass = nil)
    klass ||= "#{object.class}Decorator".constantize
    decorator = klass.new(object, self)
    yield decorator if block_given?
    decorator
  end
end

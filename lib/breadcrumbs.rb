module BreadCrumbs
  module ControllerExtensions
    def add_breadcrumb(text, url=nil)
      breadcrumbs << [text, url]
    end
    
    def breadcrumbs
      @breadcrumbs ||= []
    end
    
    def self.included(base)
      base.helper_method :add_breadcrumb
    end
  end
  
  module HelperMethods
    def breadcrumbs(separator=' > ')
      content_tag :p, controller.breadcrumbs.map { |text, url|
        url ? link_to(text, url) : text
      }.join(separator), :class => 'breadcrumbs'
    end
  end
end

require 'breadcrumbs'

ActionController::Base.send(:include, BreadCrumbs::ControllerExtensions)
ActionView::Base.send(:include, BreadCrumbs::HelperMethods)

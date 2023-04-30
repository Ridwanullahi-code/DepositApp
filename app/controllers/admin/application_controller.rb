# All Administrate controllers inherit from this
# `Administrate::ApplicationController`, making it the ideal place to put
# authentication logic or other before_actions.
#
# If you want to add pagination or other controller-level concerns,
# you're free to overwrite the RESTful controller actions.
module Admin
  class ApplicationController < Administrate::ApplicationController
    before_action :authenticate_adminstrator!

    # Override this value to specify the number of elements to display at a time
    # on index pages. Defaults to 20.
    # def records_per_page
    #   params[:per_page] || 20
    # end
    def after_sign_up_path_for(_resource)
      admin_root_path
    end

    def after_sign_in_path_for(_resource)
      admin_root_path
    end

    def after_sign_out_path_for(_resource)
      new_adminstrator_session_path
    end
  end
end

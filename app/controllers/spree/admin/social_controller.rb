module Spree
  module Admin
    class SocialController < Spree::Admin::BaseController
      def edit

      end

      def update
        params[:social].each do |provider, value|
          if value == '1'
            Spree::Config["#{provider}_button"] = true
          else
            Spree::Config["#{provider}_button"] = false
          end
        end
        if params[:likable] == '1'
          Spree::Config.likes_only_on_fb = true
        else
          Spree::Config.likes_only_on_fb = false
        end

        redirect_to edit_admin_social_path, :notice => t("social_sharing_settings_updated")
      end
    end
  end
end

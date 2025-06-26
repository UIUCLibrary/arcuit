# frozen_string_literal: true

module Arclight
  # Render the masthead
  class MastheadComponent < Blacklight::Component
    def heading
      link_to t("arclight.masthead_heading_html"), Rails.application.routes.url_helpers.root_path, slot: "site-name"
    end
  end
end

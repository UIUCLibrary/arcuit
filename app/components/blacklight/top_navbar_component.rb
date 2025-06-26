# frozen_string_literal: true

module Blacklight
  class TopNavbarComponent < Blacklight::Component
    def aria_label
      t("blacklight.top_navbar.aria.container_label")
    end
  end
end

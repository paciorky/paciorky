module PagesHelper
  def active_page_class(page = '')
        'active' if active_page(page)
      end

      def active_page(page = '')
        (controller_name == "pages") && (page.to_s == params[:id].to_s)
      end
end

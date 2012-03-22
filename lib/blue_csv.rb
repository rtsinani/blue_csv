require 'action_controller'
require 'csv'

ActionController::Renderers.add :csv do |filename, options|
  filename += "-#{Time.now.strftime("%Y%m%d%M%S")}.csv"

  if request.env['HTTP_USER_AGENT'] =~ /msie/i
    headers['Pragma']               = 'public'
    headers["Content-type"]         = "text/plain" 
    headers['Cache-Control']        = 'no-cache, must-revalidate, post-check=0, pre-check=0'
    headers['Content-Disposition']  = "attachment; filename=\"#{filename}\"" 
    headers['Expires']              = "0" 
  else
    headers["Content-Type"]       ||= 'text/csv'
    headers["Content-Disposition"]  = "attachment; filename=\"#{filename}\"" 
  end

  render :layout => false
end

class CsvGeneretor
  def self.generate
    file = CSV.generate do |csv|
      yield csv
    end
    file.html_safe
  end
end

module BlueCsv
  class Handler
    def self.call (template)
      %{
        CsvGeneretor.generate do |csv|
          #{template.source}
        end
      }
    end
  end
end

ActionView::Template.register_template_handler :blue, BlueCsv::Handler

require 'models.rb'

provider = WebManager.new(WebDeveloper.new(WebDesigner.new(TechnicalWriter.new)))
provider.deliver_application
provider.make_support

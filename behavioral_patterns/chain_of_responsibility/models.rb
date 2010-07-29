module Chainable
  def next_in_chain(link)
    @next = link
  end

  def method_missing(method, *args, &block)
    if @next == nil
      puts "This request cannot be handled!"
      return
    end
    @next.__send__(method, *args, &block)
  end
end

class WebManager
  include Chainable
  
  def initialize(link = nil)
    next_in_chain(link)
  end
  
  def deliver_application
    design_interface
    build_application
    write_documentation
    deploy_application
    puts "#{self.class.to_s}: Application delivered"
  end
end

class WebDeveloper
  include Chainable
  
  def initialize(link = nil)
    next_in_chain(link)
  end
  
  def build_application
    puts "#{self.class.to_s}: I'm building the application"
  end
  
  def deploy_application
    puts "#{self.class.to_s}: I'm deploying the application"
  end
end

class WebDesigner
  include Chainable
  
  def initialize(link = nil)
    next_in_chain(link)
  end
  
  def design_interface
    puts "#{self.class.to_s}: I'm designing the interface"
  end
end

class TechnicalWriter
  include Chainable
  
  def initialize(link = nil)
    next_in_chain(link)
  end
  
  def write_documentation
    puts "#{self.class.to_s}: I'm writing the documentation"
  end
end

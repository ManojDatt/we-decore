class ApiConstraints
 def initialize(options)
   @version = options[:version]
   @default = options[:default]
 end 
 def matches?(req)
   @default || req.headers['Accept'].include?("application/interior.v#{@version}")
 end
end
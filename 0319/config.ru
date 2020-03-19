# run cc = Proc.new {
#   [
#     200,
#     { "content-type" => "text/html" },
#     ["hello???????????"]
#   ]
# }

#perfer
class Cat
    #env是環境變數
  def call(env)
    [
      200,
      { "content-type" => "text/html" },
      ["hello in class #{env}"]
    ] 
  end
end


kitty = Cat.new
run kitty

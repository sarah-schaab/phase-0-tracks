class TodoList

 def initialize(array)
   @array = array
 end

 def get_items #plural #works
   @array
 end

 def add_item(string) #works
   @array.push(string)
   @array #both guides said check the last line - in case you want to use in another method.
 end

 def delete_item(string)
   @array.delete(string)
   @array #always want the most current array, to pass around to other methods.
 end

 def get_item(indexy) #singular
   @array[indexy]
 end
end
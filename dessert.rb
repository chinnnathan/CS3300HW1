class Dessert
  def initialize(name, calories)
    @name = name
    @calories = calories
    @is_delicious = true
    @is_healthy = true
  end
  def healthy?
    if(200 > @calories)
        @is_healty = true
    else
        @is_healthy = false
    end
    return @is_healthy
  end
  def delicious?
    return @is_delicious
  end
  def name
    return @name
  end
  def name=(new_name)
    @name = new_name
  end
  def calories
    return @calories
  end
  def calories=(new_calories)
    @calories = new_calories
  end
end

class JellyBean < Dessert
  def initialize(flavor)
    @jb_flavor = flavor
    @name = flavor + " jelly bean"
    @calories = 5 
    @is_delicious = self.delicious?
  end
  def delicious?
    if("licorice".eql?(@jb_flavor.downcase))
        @is_delicious = false
    else
        @is_delicious = true
    end
    return @is_delicious
  end
  def set_flavor(flavor)
    @jb_flavor = flavor
    @name = flavor + " jelly bean"
  end
  def get_flavor
    return @jb_flavor
  end
end
   
my_candy = JellyBean.new("vanilla")
my_candy.set_flavor("root_bear")
puts my_candy.get_flavor

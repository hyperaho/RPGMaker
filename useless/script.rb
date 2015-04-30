class Game_Temp 
	class << self 
    attr_accessor :raho_pictureA
    attr_accessor :raho_pictureB
  end
end

class Game_Interpreter
  def raho_trouble!
    Game_Temp.raho_pictureA.dispose if Game_Temp.raho_pictureA.is_a?(Sprite)
    Game_Temp.raho_pictureB.dispose if Game_Temp.raho_pictureA.is_a?(Sprite)
    Game_Temp.raho_pictureA = Sprite.new
    Game_Temp.raho_pictureB = Sprite.new
    Game_Temp.raho_pictureA.bitmap = Cache.picture('raho1')
    Game_Temp.raho_pictureB.bitmap = Cache.picture('raho2')
    Game_Temp.raho_pictureA.x = Kernel.rand(Graphics.width)
    Game_Temp.raho_pictureA.y = Kernel.rand(Graphics.height) 
    Game_Temp.raho_pictureB.x = Kernel.rand(Graphics.width)
    Game_Temp.raho_pictureB.y = Kernel.rand(Graphics.height)
  end
end 
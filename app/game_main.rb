class GameMain < Zif::Game
    def initialize
        super()
        register_scene(:scene_main, SceneMain)
        @scene = SceneMain.new
    end
end

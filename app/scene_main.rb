class SceneMain < Zif::Scene
    def prepare_scene
        @fox = Zif::Sprite.new.tap do |s|
            s.x = $gtk.args.grid.w.half - 64
            s.y = ($gtk.args.grid.h.half - 64).from_top
            s.w = 128
            s.h = 128
            #s.path = "sprites/fox/fox_idle_1.png"
            
            s.new_basic_animation(
                named: :sleep,
                paths_and_durations: [1,2,3,4,5,6].map { |i| ["fox/fox_sleep_#{i}", 6] }
            )
        
            s.run_animation_sequence(:sleep)
        end

        $game.services[:action_service].register_actionable(@fox)
        $gtk.args.outputs.static_sprites << @fox
    end
end

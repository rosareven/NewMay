require 'app/lib/zif/require.rb'
require 'app/require.rb'

def tick(args)
  if args.tick_count == 2
    $game = GameMain.new
    $game.scene.prepare_scene
  end
  $game&.perform_tick
end

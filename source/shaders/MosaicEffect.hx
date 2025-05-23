package shaders;

import flixel.addons.display.FlxRuntimeShader;
import openfl.utils.Assets;
import flixel.math.FlxPoint;

class MosaicEffect extends FlxRuntimeShader
{
  public var blockSize:FlxPoint = FlxPoint.get(1.0, 1.0);

  public function new()
  {
    super(Assets.getText(Paths.getPath('shaders/mosaic.frag', TEXT, null, false)));
    setBlockSize(1.0, 1.0);
  }

  public function setBlockSize(w:Float, h:Float)
  {
    blockSize.set(w, h);
    setFloatArray("uBlocksize", [w, h]);
  }
}

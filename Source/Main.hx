package;

import openfl.Vector;
import openfl.display.Sprite;

class Main extends Sprite {
	public function new() {
		super();

		var shader = new TrilateralShader();

		shader.a_tcolor.value = [1, 0, 0, 0.5, 0, 1, 0, 1, 0, 0, 1, 1];

		var spr = new Sprite();
		spr.graphics.beginShaderFill(shader);
		var vertices = [
			-100, -300, 0,
			 100, -300, 0,
			   0,  300, 0.
		];
		var indices = [0, 1, 2];
		spr.graphics.drawTriangles(Vector.ofArray(vertices), Vector.ofArray(indices));
		spr.graphics.endFill();
		this.addChild(spr);
		spr.x = spr.y = 300;
	}
}

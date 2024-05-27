import glsl.OpenFLShader;

class TrilateralShader extends OpenFLShader {
	@:attribute var tcolor:Vec4;

	@:varying var tcolorv:Vec4;

	override function vertex() {
		super.vertex();
		this.tcolorv = tcolor;
	}

	override function fragment() {
		this.gl_FragColor = this.tcolorv;
	}
}

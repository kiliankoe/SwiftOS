struct Vertex {
	var x: Double
	var y: Double

	mutating func right(delta: Double) {
		x += delta
	}

	mutating func left(delta: Double) {
		x -= delta
	}

	mutating func up(delta: Double) {
		y -= delta
	}

	mutating func down(delta: Double) {
		y += delta
	}
}
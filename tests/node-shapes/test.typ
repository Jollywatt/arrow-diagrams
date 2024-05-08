#set page(width: auto, height: auto, margin: 1em)
#import "/src/exports.typ" as fletcher: diagram, node, edge, shapes

#diagram(
	node-stroke: 1pt,
	node-outset: 5pt,
	axes: (ltr, ttb),
	node((0,0), $A$, radius: 5mm),
	edge("->"),
	node((1,1), [crowded], shape: shapes.house, fill: blue.lighten(90%)),
	edge("..>", bend: 30deg),
	node((0,2), $B$, shape: shapes.diamond),
	edge((0,0), "d,ru,d", "=>"),

	edge((1,1), "rd", bend: -40deg),
	node((2,2), `cool`, shape: shapes.pill),
	edge("->"),
	node((1,3), [_amazing_], shape: shapes.parallelogram),

	node((2,0), [robots], shape: shapes.hexagon),
	node((2,3), [squashed], shape: shapes.ellipse),
	edge("u", "->", bend: -30deg),

)


#pagebreak()

#set align(center)


#for (name, shape) in dictionary(shapes) {
	if type(shape) == module { continue }
	diagram(debug: 0, node((0, 0), name, shape: shape, stroke: 1pt, extrude: (0, 2)))
	linebreak()
}

#pagebreak()

#diagram(
	node-stroke: 1pt,
	spacing: 10pt,
	node((0,0), [STOP], shape: shapes.octagon.with(truncate: 0)),
	node((1,0), [STOP], shape: shapes.octagon.with(truncate: 0.5)),
	node((2,0), [STOP], shape: shapes.octagon.with(truncate: 1)),
	node((0,1), [STOP], shape: shapes.octagon.with(truncate: 2pt)),
	node((1,1), [STOP], shape: shapes.octagon.with(truncate: 5pt)),
	node((2,1), [STOP], shape: shapes.octagon.with(truncate: 8pt)),
)

#pagebreak()

#diagram(node((0, 0), [triangle], stroke: 1pt, shape: shapes.triangle))

#diagram(node((0, 0), `top`, stroke: 1pt, shape: shapes.triangle.with(dir: top)))
#diagram(node((0, 0), `bottom`, stroke: 1pt, shape: shapes.triangle.with(dir: bottom)))

#diagram(node((0, 0), `left`, stroke: 1pt, shape: shapes.triangle.with(dir: left)))
#diagram(node((0, 0), `right`, stroke: 1pt, shape: shapes.triangle.with(dir: right)))

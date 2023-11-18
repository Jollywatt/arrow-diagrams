#import "/src/exports.typ": *

#set page(width: 22cm, height: 9cm, margin: 1cm)

#show: scale.with(200%, origin: top + left)

#stack(
	dir: ltr,
	spacing: 1cm,

arrow-diagram(cell-size: 15mm, {
	let (src, img, quo) = ((0, 1), (1, 1), (0, 0))
	node(src, $G$)
	node(img, $im f$)
	node(quo, $G slash ker(f)$)
	conn(src, img, $f$, "->")
	conn(quo, img, $tilde(f)$, "hook-->", label-side: right)
	conn(src, quo, $pi$, "->>")
}),

arrow-diagram(
	node-stroke: black,
	node-fill: blue.lighten(90%),
	node((0,0), `typst`),
	node((1,0), "A"),
	node((2,0), "B", stroke: 2pt),
	node((2,1), "C"),

	conn((0,0), (1,0), "->", bend: 15deg),
	conn((0,0), (1,0), "<-", bend: -15deg),
	conn((1,0), (2,1), "=>", bend: 20deg),
	conn((1,0), (2,0), "..>", bend: -0deg),
),

)
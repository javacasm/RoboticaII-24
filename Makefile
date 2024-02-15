
robóticaII: 
	pandoc --pdf-engine=xelatex   \
		-V papersize:a4paper    \
		--template=./LaTeX_ES.latex    \
		--reference-doc=plantilla_roboticaII.docx \
		-o  "Robótica II con microbit.docx"  \
		Cabecera.md        \
		Cabecera_latex.md \
		sesion_1.md \
		sesion_2.md \
		sesion_3.md \
		sesion_4.md \

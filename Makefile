VER := $(shell git describe --tags --abbrev=0)

withnote:
	V=$(git describe --tags --abbrev=0)
	pandoc japanese-ver.md --reference-doc=src/ref.docx --output=japanese-$(VER).docx

bt:
	V=$(git describe --tags --abbrev=0)
	pandoc back-translated-ver.md --reference-doc=src/ref.docx --output=back-translated-$(VER).docx

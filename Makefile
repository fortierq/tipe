clean:
	poetry run jupyter-book clean files
build:
	jupyter-book build files &&\
    python3 -m http.server --directory files/_build/html
run:
	docker run -it --rm -p 8000:8000 -v $(shell pwd):/book/ qfortier/jb-addnote

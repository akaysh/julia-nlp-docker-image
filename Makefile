build:
	docker build . -t julia-nlp
push:
	docker tag julia-nlp akaysh/julia-nlp
	docker push akaysh/julia-nlp:julia-nlp
run:
	docker run --name test -it julia
clean:
	docker rm test

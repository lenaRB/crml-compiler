## just a sample Makefile with graddle commands, will be improved


tranlate-tests:
	./gradlew translate --args="tests/unit/" --warning-mode all

parse-tests:
	./gradlew parse --args="tests/unit/" --warning-mode all

parse:
		./gradlew parse --args=$(DIR) --warning-mode all

tranlate:
		./gradlew translate --args=$(DIR) --warning-mode all

build:
	./gradlew build

cleanall:
	rm -rf build bin generated

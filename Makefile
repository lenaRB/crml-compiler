## just a sample Makefile with graddle commands, will be improved

detected_OS ?= $(shell uname -s)

GRADLE_CMD=gradlew.bat

ifeq ($(detected_OS),Darwin)
	GRADLE_CMD := ./gradlew
else ifeq (MINGW,$(findstring MINGW,$(detected_OS)))
	GRADLE_CMD := ./gradlew
else
	GRADLE_CMD := ./gradlew
endif

all: translate-tests

translate-tests:
	$(GRADLE_CMD) translate --args="tests/unit/" --warning-mode all

parse-tests:
	$(GRADLE_CMD) parse --args="tests/unit/" --warning-mode all

parse:
	$(GRADLE_CMD) parse --args=$(DIR) --warning-mode all

translate:
	$(GRADLE_CMD) translate --args=$(DIR) --warning-mode all

build:
	$(GRADLE_CMD) build

cleanall: clean
clean:
	rm -rf build bin generated

# beware, this will remove *everything* that is was not added in the git repo
gitclean:
	git clean -fdx

distribution: all
	$(GRADLE_CMD) shadowJar
	
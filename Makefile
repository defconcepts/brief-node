test:
	@./node_modules/mocha/bin/mocha \
		--require should \
		--reporter spec \
		test/**/*-spec.js

.PHONY: test

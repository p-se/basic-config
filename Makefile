.PHONY: makeself test test-shell

makeself:
	makeself src basic-config.run "basic-configuration files installation" ./install.sh

test:
	docker run --rm -it -v /home/user/src/basic-config/basic-config.run:/basic_config.run ubuntu bash -c /basic_config.run

test-shell: makeself
	docker run \
		--rm \
		-d \
		-v /home/user/src/basic-config/basic-config.run:/basic_config.run \
		--name basic-config-test \
		ubuntu sleep infinity
	-docker exec basic-config-test bash -c /basic_config.run
	-docker exec -it basic-config-test bash
	docker stop basic-config-test

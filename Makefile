lint:
	yamllint -c .config/yamllint .
	ansible-lint --config-file=.config/ansible-lint.yml

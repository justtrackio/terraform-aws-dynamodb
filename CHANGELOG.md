# Changelog

All notable changes to this project will be documented in this file.

## [2.3.0](https://github.com/justtrackio/terraform-aws-dynamodb-table/compare/v2.2.0...v2.3.0) (2025-01-09)


### Features

* enable pitr and deletion protection by default ([#48](https://github.com/justtrackio/terraform-aws-dynamodb-table/issues/48)) ([f78e8ec](https://github.com/justtrackio/terraform-aws-dynamodb-table/commit/f78e8ecc7b62b3a6870a4face17457dac1abe57c))

## [2.2.0](https://github.com/justtrackio/terraform-aws-dynamodb-table/compare/v2.1.0...v2.2.0) (2024-04-10)


### Features

* allow to specify principals with access to table ([#46](https://github.com/justtrackio/terraform-aws-dynamodb-table/issues/46)) ([d177ec0](https://github.com/justtrackio/terraform-aws-dynamodb-table/commit/d177ec012dc8246152adc8d1028882d86745a559))

## [2.1.0](https://github.com/justtrackio/terraform-aws-dynamodb-table/compare/v2.0.2...v2.1.0) (2024-03-18)


### Features

* ignore gsi capacity but still needed for initial creation ([fa09cb0](https://github.com/justtrackio/terraform-aws-dynamodb-table/commit/fa09cb070266d4f1a18a0e5d779927ffc4fc336a))
* ignore gsi capacity but still needed for initial creation ([#45](https://github.com/justtrackio/terraform-aws-dynamodb-table/issues/45)) ([02b4d77](https://github.com/justtrackio/terraform-aws-dynamodb-table/commit/02b4d77ffec3e11b688f05cd5e6f6e8d8f16eb65))

### [2.0.2](https://github.com/justtrackio/terraform-aws-dynamodb-table/compare/v2.0.1...v2.0.2) (2023-11-15)


### Bug Fixes

* Define ttl attribute_name only when ttl is enabled ([#41](https://github.com/justtrackio/terraform-aws-dynamodb-table/issues/41)) ([1a8a64b](https://github.com/justtrackio/terraform-aws-dynamodb-table/commit/1a8a64b706f55adb48a51741b4cb6d585677d6b6))

### [2.0.1](https://github.com/justtrackio/terraform-aws-dynamodb-table/compare/v2.0.0...v2.0.1) (2023-11-15)


### Bug Fixes

* Disable ttl by default ([#39](https://github.com/justtrackio/terraform-aws-dynamodb-table/issues/39)) ([2ab2b46](https://github.com/justtrackio/terraform-aws-dynamodb-table/commit/2ab2b4609e316c4d563b51ef083184ca77600f4b))
* Enable workflows ([#40](https://github.com/justtrackio/terraform-aws-dynamodb-table/issues/40)) ([84ea8d4](https://github.com/justtrackio/terraform-aws-dynamodb-table/commit/84ea8d439fe8cea051d56a45407eea6eea3da2f8))

## [3.3.0](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/compare/v3.2.0...v3.3.0) (2023-05-25)


### Features

* Added option to ignore changes to GSIs ([#72](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/issues/72)) ([44187e9](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/commit/44187e9d56b6662eb6aef757d3322c92edc27d4b))

## [3.2.0](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/compare/v3.1.2...v3.2.0) (2023-03-21)


### Features

* Add `deletion_protection_enabled` ([#70](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/issues/70)) ([bce94be](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/commit/bce94bea8da8facd0a709263414a3f8f7888b5d4))

### [3.1.2](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/compare/v3.1.1...v3.1.2) (2022-11-14)


### Bug Fixes

* Update CI configuration files to use latest version ([#66](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/issues/66)) ([463c164](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/commit/463c1640cd3d580254c4f52b2873144f0a5322cd))

### [3.1.1](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/compare/v3.1.0...v3.1.1) (2022-09-02)


### Bug Fixes

* Added variable table_class in autoscaled ([#64](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/issues/64)) ([0b81ce3](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/commit/0b81ce3d6354547be7e257807e449cbb75d73506))

## [3.1.0](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/compare/v3.0.0...v3.1.0) (2022-08-30)


### Features

* Support configuring point_in_time_recovery on replicas ([#62](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/issues/62)) ([53fc0a0](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/commit/53fc0a0f62602f53b51435481d6389df32e36902))

## [3.0.0](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/compare/v2.0.0...v3.0.0) (2022-07-26)


### ⚠ BREAKING CHANGES

* Added support for propagate_tags feature (#59)

### Features

* Added support for propagate_tags feature ([#59](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/issues/59)) ([c750eda](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/commit/c750eda6246076e3d49343cba100c4f2d5768e1f))

## [2.0.0](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/compare/v1.3.0...v2.0.0) (2022-06-07)


### ⚠ BREAKING CHANGES

* Added module wrappers. Bump TF version to 1.0. (#55)

### Features

* Added module wrappers. Bump TF version to 1.0. ([#55](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/issues/55)) ([2b464ad](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/commit/2b464ad0f32bd2767f6b18487e01f9e860a50a2d))

## [1.3.0](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/compare/v1.2.2...v1.3.0) (2022-06-07)


### Features

* Added support for table class ([#54](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/issues/54)) ([c0b6ca2](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/commit/c0b6ca22a8871062c989a9cdd4d45dabb81b57a8))

### [1.3.0](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/compare/v1.2.2...v1.3.0) (2022-06-05)


### Features

* Support table class feature ([#48](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/issues/52)) ([f3f11eb](https://github.com/HarriLLC/terraform-aws-dynamodb-table/commit/f3f11eb68a178978178b44d8ec40fc1d7e8d80ad))

### [1.2.2](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/compare/v1.2.1...v1.2.2) (2022-01-24)


### Bug Fixes

* Fixed dynamodb_table_stream_label output ([#47](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/issues/47)) ([ba08762](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/commit/ba08762b098f64af561d2f0a63b2cb166c9138bc))

### [1.2.1](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/compare/v1.2.0...v1.2.1) (2022-01-24)


### Bug Fixes

* Fixed dynamodb_table_stream_arn output ([#46](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/issues/46)) ([e3f534c](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/commit/e3f534c6e80a542c1e6282cd79129e291f9bc83f))

## [1.2.0](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/compare/v1.1.1...v1.2.0) (2022-01-14)


### Features

* Added autoscaled table resource (may cause unexpected changes) ([#43](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/issues/43)) ([c4a8306](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/commit/c4a8306643ad30f67b63b3db37fcf7c8dd5b168a))
* Added variable `autoscaling_enabled` to control autoscaling ([#44](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/issues/44)) ([9ae52b6](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/commit/9ae52b61430e46fc77fbe619bb7eecbd3754315a))

### [1.1.1](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/compare/v1.1.0...v1.1.1) (2022-01-10)


### Bug Fixes

* update CI/CD process to enable auto-release workflow ([#41](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/issues/41)) ([09d7a28](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/commit/09d7a2893f0c94c97cc7b03387802acfdeaea7bf))

<a name="v1.1.0"></a>
## [v1.1.0] - 2021-06-07

- feat: add provisions for accepting KMS key ARN for global table regions ([#38](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/issues/38))
- chore: update CI/CD to use stable `terraform-docs` release artifact and discoverable Apache2.0 license ([#35](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/issues/35))


<a name="v1.0.0"></a>
## [v1.0.0] - 2021-04-26

- feat: Shorten outputs (removing this_) ([#34](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/issues/34))
- chore: update documentation and pin `terraform_docs` version to avoid future changes ([#32](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/issues/32))
- chore: align ci-cd static checks to use individual minimum Terraform versions ([#31](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/issues/31))


<a name="v0.13.0"></a>
## [v0.13.0] - 2021-03-02

- fix: Update global example to enable stream ([#30](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/issues/30))
- chore: add ci-cd workflow for pre-commit checks ([#29](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/issues/29))


<a name="v0.12.0"></a>
## [v0.12.0] - 2021-02-20

- chore: update documentation based on latest `terraform-docs` which includes module and resource sections ([#28](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/issues/28))


<a name="v0.11.0"></a>
## [v0.11.0] - 2020-12-07

- fix: use proper var for aws_appautoscaling_policy ([#26](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/issues/26))


<a name="v0.10.0"></a>
## [v0.10.0] - 2020-11-24

- fix: Updated supported Terraform versions ([#24](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/issues/24))


<a name="v0.9.0"></a>
## [v0.9.0] - 2020-10-13

- fix: fixed variable typings in variables.tf for indices ([#21](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/issues/21))


<a name="v0.8.0"></a>
## [v0.8.0] - 2020-09-23

- feat: Add replica configuration to create global DynamoDB tables ([#20](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/issues/20))


<a name="v0.7.0"></a>
## [v0.7.0] - 2020-08-14

- feat: Updated version requirements for AWS provider v3 and Terraform 0.13 ([#18](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/issues/18))


<a name="v0.6.0"></a>
## [v0.6.0] - 2020-06-19

- fix: Fixed autoscaling references (resolves [#15](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/issues/15)) ([#16](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/issues/16))


<a name="v0.5.0"></a>
## [v0.5.0] - 2020-04-15

- fix: Use correct write policy name for table and index autoscaling rules ([#12](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/issues/12))
- fix: Lookup non_key_attributes in local_secondary_index.value. ([#11](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/issues/11))


<a name="v0.4.0"></a>
## [v0.4.0] - 2020-04-02

- feat: Adding autoscaling ([#10](https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/issues/10))


<a name="v0.3.0"></a>
## [v0.3.0] - 2020-03-21



<a name="v0.2.0"></a>
## v0.2.0 - 2020-03-21

- feat: Added DynamoDB table resource
- first commit


[Unreleased]: https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/compare/v1.1.0...HEAD
[v1.1.0]: https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/compare/v1.0.0...v1.1.0
[v1.0.0]: https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/compare/v0.13.0...v1.0.0
[v0.13.0]: https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/compare/v0.12.0...v0.13.0
[v0.12.0]: https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/compare/v0.11.0...v0.12.0
[v0.11.0]: https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/compare/v0.10.0...v0.11.0
[v0.10.0]: https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/compare/v0.9.0...v0.10.0
[v0.9.0]: https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/compare/v0.8.0...v0.9.0
[v0.8.0]: https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/compare/v0.7.0...v0.8.0
[v0.7.0]: https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/compare/v0.6.0...v0.7.0
[v0.6.0]: https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/compare/v0.5.0...v0.6.0
[v0.5.0]: https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/compare/v0.4.0...v0.5.0
[v0.4.0]: https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/compare/v0.3.0...v0.4.0
[v0.3.0]: https://github.com/terraform-aws-modules/terraform-aws-dynamodb-table/compare/v0.2.0...v0.3.0

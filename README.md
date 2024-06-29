# Terraform Test 실습용 모듈

HCP Terraform 또는 Terraform Enterprise에서 테스트를 진행하기위해서는 다음의 구성이 필요합니다.

- 사용자 환경
  - HCP Terraform 또는 Terraform Enterprise의 로그인 토큰
  - 설정되지 않은 경우 `terraform login`으로 토큰을 로컬 환경에 구성

- HCP Terraform 또는 Terraform Enterprise
  - 등록된 모듈의 `Congigure Tests`에 AWS 관련 환경변수를 등록
  - `AWS_DEFAULT_REGION`
  - `AWS_ACCESS_KEY_ID`
  - `AWS_SECRET_ACCESS_KEY`
  - `AWS_SESSION_TOKEN` (필요 시)

모듈의 저장소에 변경이 발생하면 테스트가 자동으로 실행되나, 첫 등록의 경우 수동으로 트리거해야 합니다.
다음 명령어 예시 처럼 HCP Terraform 또는 Terraform Enterprise에 등록된 모듈에 대해 테스트를 수동으로 수행 합니다. 

```bash
# terraform test -cloud-run="<url>/<org_name>/<module_name>/<provider>"
terraform test -cloud-run="app.terraform.io/terraform-101-org/ec2-test-module/aws"
```

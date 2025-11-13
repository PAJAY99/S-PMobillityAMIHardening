# Hardened Image Pipeline (GitHub + Packer + Ansible + Tenable)

This project automates creating and validating hardened cloud images.

## Features
- GitHub Actions CI/CD
- Packer for image building (AWS + Azure)
- Ansible for security agent installation
- Terraform for deployment testing
- Tenable SDK for vulnerability scanning

## Setup Instructions
1. Configure GitHub secrets:
   - `AWS_ACCESS_KEY_ID`
   - `AWS_SECRET_ACCESS_KEY`
   - `TENABLE_ACCESS_KEY`
   - `TENABLE_SECRET_KEY`
2. Run workflow manually under **Actions → Hardened Image Pipeline**.
3. Review results in `scan_results.json` and release notes.

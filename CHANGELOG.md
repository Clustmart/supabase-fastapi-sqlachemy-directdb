## 2025-10-04

### Fixed
- **Dependencies**: Removed version pinning from `requirements.txt` to resolve server startup failures caused by incompatible package versions.
### Removed
- **Development**: Excluded `.venv/` from Git to prevent environment-specific files from being committed.


## 2025-10-05

### Added
- **Infrastructure**: Added `Dockerfile` and `docker-compose.yml` for containerized deployment.
  - Enables running the app as a Docker container on existing servers.
  - Simplifies setup and deployment for production and development environments.
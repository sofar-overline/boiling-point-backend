# Boiling Backend - Authentication API with MFA

> **⚠️ Project Status**: This is **Phase 1** of a larger application. We're starting with a solid authentication foundation before building additional features.

A Spring Boot backend service providing secure authentication with Multi-Factor Authentication (MFA) support.

## 🎯 Project Overview

Boiling Backend will be a comprehensive backend service. **Currently, we're focusing on building a robust authentication system as the foundation** for future features.

This initial phase implements industry-standard security practices for user authentication, token management, and MFA verification. Once this authentication layer is solid, we'll build additional business logic and features on top of it.

### Key Features

- **User Authentication**: Secure login with username/password
- **Multi-Factor Authentication (MFA)**: TOTP-based MFA using authenticator apps (Google Authenticator, Authy, etc.)
- **JWT Token Management**: Stateless authentication using JSON Web Tokens
- **Secure Password Storage**: BCrypt password hashing
- **Session Management**: Token-based session handling

## 🛠️ Technology Stack

- **Java 25**: Latest Java version
- **Spring Boot 4.0.0**: Application framework
- **Spring Security**: Authentication and authorization
- **Spring Data JPA**: Database access and ORM
- **H2 Database**: In-memory database for development
- **PostgreSQL**: Production database support
- **Maven**: Dependency management and build tool

## 📋 Prerequisites

- Java 25 or higher
- Maven 3.6+ (or use included Maven Wrapper)
- PostgreSQL database

## 🚀 Quick Start

### 1. Clone the Repository

```bash
git clone <repository-url>
cd boiling-backend
```

### 2. Run the Application

**Windows:**
```bash
mvnw.cmd spring-boot:run
```

**Linux/Mac:**
```bash
./mvnw spring-boot:run
```

### 3. Access the Application

The application will start on `http://localhost:8080`

## 📡 API Endpoints

### Authentication Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
| `POST` | `/api/auth/register` | Register a new user account |
| `POST` | `/api/auth/login` | Login with username and password |
| `POST` | `/api/auth/refresh` | Refresh JWT access token |
| `POST` | `/api/auth/logout` | Logout and invalidate token |

### MFA Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
| `POST` | `/api/auth/mfa/setup` | Initialize MFA setup (returns QR code) |
| `POST` | `/api/auth/mfa/verify` | Verify MFA code and complete setup |
| `POST` | `/api/auth/mfa/validate` | Validate MFA code during login |
| `POST` | `/api/auth/mfa/disable` | Disable MFA for user account |

### User Profile Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
| `GET` | `/api/user/profile` | Get current user profile |
| `PUT` | `/api/user/profile` | Update user profile |
| `PUT` | `/api/user/password` | Change password |

## 🔧 Configuration

### Database Setup (PostgreSQL)

Configure your database connection in `application.properties`:

```properties
spring.datasource.url=jdbc:postgresql://localhost:5432/boiling
spring.datasource.username=your_username
spring.datasource.password=your_password
spring.jpa.hibernate.ddl-auto=update
spring.jpa.properties.hibernate.dialect=org.hibernate.dialect.PostgreSQLDialect
```

### Environment-Specific Configuration

For different environments, create profile-specific property files:
- `application-dev.properties` - Development environment
- `application-prod.properties` - Production environment

Run with specific profile:
```bash
mvnw.cmd spring-boot:run -Dspring-boot.run.profiles=dev
```

## 🔐 Security Features

### Password Requirements
- Minimum 8 characters
- At least one uppercase letter
- At least one lowercase letter
- At least one number
- At least one special character

### MFA Implementation
- Uses Time-based One-Time Password (TOTP) algorithm
- Compatible with Google Authenticator, Authy, Microsoft Authenticator
- 6-digit codes with 30-second validity
- Backup codes provided during setup

### JWT Configuration
- Access tokens expire in 15 minutes
- Refresh tokens expire in 7 days
- Tokens signed with HS512 algorithm


## 🧪 Testing

Run all tests:
```bash
mvnw.cmd test
```

Run specific test class:
```bash
mvnw.cmd test -Dtest=AuthenticationControllerTest
```

## 📝 Development Roadmap

> **Current Focus**: Phase 1 - Building the authentication foundation as the first step of a larger project

### Phase 1: Core Authentication (🔄 IN PROGRESS)
- [x] Project setup with Spring Boot 4.0.0
- [x] README documentation
- [ ] User entity and repository
- [ ] User registration endpoint
- [ ] Login endpoint with JWT
- [ ] Password encryption with BCrypt

### Phase 2: MFA Implementation (📅 NEXT)
- [ ] MFA entity and repository
- [ ] TOTP secret generation
- [ ] QR code generation for authenticator apps
- [ ] MFA verification endpoint
- [ ] Backup codes generation

### Phase 3: Authentication Polish (📅 PLANNED)
- [ ] Password reset flow
- [ ] Email verification
- [ ] Account lockout mechanism
- [ ] Refresh token rotation
- [ ] Audit logging for security events

### Phase 4: Production Ready Authentication (📅 PLANNED)
- [ ] API documentation (Swagger/OpenAPI)
- [ ] Docker containerization
- [ ] CI/CD pipeline
- [ ] Monitoring and logging
- [ ] Production deployment guide

### Phase 5: Future Application Features (🔮 TO BE DEFINED)
- [ ] *Additional business features will be defined after authentication is complete*
- [ ] *This authentication layer will serve as the foundation for all future modules*


## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 📧 Contact

For questions or support, please contact the development team.

---

**Status**: 🚧 Under Active Development

Last Updated: January 2026


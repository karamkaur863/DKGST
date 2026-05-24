# INDIAN GST ACCOUNTING SOFTWARE

This project is a modular ASP.NET Core API for Indian multi-company GST accounting. Each company has a separate database. The API supports modular design, minimal APIs, JWT authentication, Redis cache, dynamic DB switching, and multi-language support.

## Features
- Modular structure (Accounts, Inventory, Sales, Purchase, etc.)
- Separate project for each module
- Multi-company: separate database per company
- Multi-language (Indian)
- API versioning
- Identity & Authorization: ASP.NETUser, Role, Claims
- JWT authentication
- Redis caching
- Dynamic database switching based on CompanyId header
- Minimal API endpoints

## Getting Started
1. Clone the repo
2. Open solution in Visual Studio
3. Run Database Migrations
4. Build and Run

## Project Structure
- `/DKGST.Api` - Main Minimal API
- `/DKGST.Core` - Core domain models
- `...Other modules`

## Contributing
- Create issues or PRs for feature requests and bug fixes.

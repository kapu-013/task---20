# ARCHITECTURE DOCUMENT

## System Architecture Overview

### Frontend Layer
- HTML5 for structure
- CSS3 for styling
- JavaScript for interactivity

### Backend Layer  
- Node.js runtime
- Express.js framework
- RESTful APIs

### Database Layer
- MongoDB / MySQL
- Data persistence
- CRUD operations

### Communication Flow
Browser → Frontend → Backend → Database → Backend → Frontend → Browser

## Technologies Used
| Component | Technology |
|-----------|------------|
| Frontend | HTML, CSS, JavaScript |
| Backend | Node.js, Express |
| Database | MongoDB |
| Version Control | Git |
| Editor | VS Code |

## Architecture Diagram (Text View)
                    ┌─────────────┐
                    │   Browser   │
                    └──────┬──────┘
                           │
                    ┌──────▼──────┐
                    │   Frontend  │
                    │  (HTML/CSS) │
                    └──────┬──────┘
                           │
                    ┌──────▼──────┐
                    │   Backend   │
                    │  (Node.js)  │
                    └──────┬──────┘
                           │
                    ┌──────▼──────┐
                    │  Database   │
                    │  (MongoDB)  │
                    └─────────────┘

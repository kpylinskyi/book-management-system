# Book Management System

This project is a full-stack web application designed to manage a list of books. It includes a React frontend and a Django backend with Django REST Framework. The application allows users to view, add, edit, and delete books, as well as manage authors.

## Project Structure

- **Frontend**: Located in the `/client` directory, this is a React application that interacts with the backend API.
- **Backend**: Located in the `/api` directory, this is a Django application using Django REST Framework to provide a RESTful API for managing books and authors.

## Features

### Frontend (React)

- **Display a list of books**: Shows all available books with options to edit or delete.
- **Add a new book**: Form to enter book title and select an author from a dropdown list.
- **Edit an existing book**: Modify book details and update them.
- **Delete a book**: Remove a book from the list.
- **Author selection**: Dropdown menu to select an author when adding or editing a book.
- **API Interaction**: Communicates with the Django backend to perform CRUD operations.
- **Error Handling**: Displays appropriate error messages to the user when API interactions fail.
- **Features**: Filtering and sorting of the book list.

[See client readme](client/README.md)

### Backend (Django)

- **Models**:
  - **Author**:
    - `name`: String, max length 255 characters.
    - `birth_date`: Optional date.
  - **Book**:
    - `title`: String, max length 255 characters.
    - `author`: Foreign key to the Author model.
- **API Endpoints**:
  - **Author**: CRUD operations (Create, Read, Update, Delete).
  - **Book**: CRUD operations (Create, Read, Update, Delete).
- **Serialization**: Uses Django REST Framework serializers to convert complex data types to native Python types.
- **ViewSets**: Provides logic for CRUD operations.
- **Routing**: Configured to handle API requests and route them to appropriate viewsets.
- **Data Integrity**: Ensures correct relationships between books and authors.

## Setup Instructions

### Prerequisites

- Node.js and npm (for React)
- Python 3.x and pip (for Django)
- PostgreSQL

### Frontend Setup

1. Navigate to the `client` directory:
   ```bash
   cd client
   ```

2. Install the dependencies:
   ```bash
   npm install
   ```

3. Start the React development server:
   ```bash
   npm start
   ```

   The React app will be accessible at `http://localhost:3000`.

### Backend Setup

1. Navigate to the `api` directory:
   ```bash
   cd api
   ```

2. Create a virtual environment and activate it:
   ```bash
   python -m venv env
   source env/bin/activate
   ```

3. Install the dependencies:
   ```bash
   pip install -r requirements.txt
   ```

4. Apply database migrations:
   ```bash
   python manage.py migrate
   ```

5. Create a superuser (optional, for accessing the Django admin):
   ```bash
   python manage.py createsuperuser
   ```

6. Start the Django development server:
   ```bash
   python manage.py runserver
   ```

   The Django API will be accessible at `http://localhost:8000`.


### Alternative
Run shel scripts defined at `start-api.sh` and `start-client.sh`

## API Documentation

- **Base URL**: `http://localhost:8000/api/`
- **Endpoints**:
  - `/authors/` - List and manage authors.
  - `/books/` - List and manage books.

## Additional Information

- **Code Repository**: The complete source code for this project is available on GitHub.
- **Contributions**: Contributions to improve or extend this project are welcome. Please submit a pull request with your proposed changes.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE.md) file for details.

---

Feel free to reach out if you have any questions or need further clarification on the setup or functionality of this project.

# TheDeveloper

## Student Manager
## Project View

```
StudentManager/
├── Web Pages/
│   ├── WEB-INF/
│   │   ├── lib/
│   │   │   ├── mariadb-java-client-3.5.2.jar
│   │   ├── css/
│   │   ├── js/
│   │   ├── beans.xml
│   │   ├── web.xml
│   ├── attendance.jsp
│   ├── dashboard.jsp
│   ├── registration.jsp
│
├── Source Packages/
│   ├── com.studentmanager.dao/
│   │   ├── UserDAO.java
│   ├── com.studentmanager.database/
│   │   ├── DatabaseConnection.java
│   ├── com.studentmanager.services/
│   │   ├── LoginService.java
│   ├── com.studentmanager.servlets/
│   │   ├── LoginServlet.java
│   ├── com.studentmanager.filters/   # New folder for request/response filters
│   │   ├── AuthenticationFilter.java
│   │   ├── CORSFilter.java
│   ├── com.studentmanager.features/  # New folder for additional features
│   │   ├── ExportData.java
│   │   ├── NotificationService.java
│
├── Dependencies/
│   ├── JDK 17 (Default)
│
├── Project Files/
│   ├── pom.xml
```

## Thorough Breakdown of the Project Structure
This project follows a structured Maven-based Java EE (Jakarta EE) architecture, ensuring clear separation of concerns. Below is an in-depth description of each folder and file, explaining its purpose and placement.

### Top-Level Directories
#### 1. StudentManager-1.0-SNAPSHOT/

This is the root folder of the project. The name suggests it is a Maven project with a version (1.0-SNAPSHOT indicates an unstable/development version).
It contains all source files, configuration files, dependencies, and web-related files.

##### 1. Web Pages (Frontend + Configurations)

```
├── Web Pages/ 
│ ├── WEB-INF/ 
│ │ ├── lib/ 
│ │ ├── css/ 
│ │ ├── js/ 
│ │ ├── beans.xml 
│ │ ├── web.xml 
│ ├── attendance.jsp 
│ ├── dashboard.jsp 
│ ├── registration.jsp 
```

###### WEB-INF/

Why it exists: This is a protected directory in a Java EE web application.
Why it’s inside Web Pages/: It contains configurations and libraries that should not be directly accessible via a web browser.

Contents of WEB-INF/:

- lib/ → Stores third-party .jar files needed by the project. Example: 
- mariadb-java-client-3.5.2.jar → MariaDB driver for database connectivity.
- css/ → Contains all CSS files for styling the application.
- js/ → Stores JavaScript files for frontend interactions (e.g., form validation, AJAX requests).
- beans.xml → Java EE CDI (Contexts and Dependency Injection) configuration file, used for managing beans in the application.
- web.xml → Deployment descriptor for configuring servlets, filters, and other web components.
- JSP Files (.jsp)
- attendance.jsp → Displays student attendance records.
- dashboard.jsp → The main dashboard for users/admins.
- registration.jsp → Student registration page.

#### 2. Source Packages (Backend Code - Java Classes)
```
├── Source Packages/ 
│ ├── com.studentmanager.dao/ 
│
```
##### 2. Source Packages (Backend Code - Java Classes, Business Logic, and Utilities)
This directory contains all Java classes for database operations, business logic, servlets, filters, and additional features.
```
├── Source Packages/ 
│ ├── com.studentmanager.dao/ 
│ ├── com.studentmanager.database/ 
│ ├── com.studentmanager.services/ 
│ ├── com.studentmanager.servlets/ 
│ ├── com.studentmanager.filters/ 
│ ├── com.studentmanager.features/ 
com.studentmanager.dao/ (Data Access Objects - DAO Layer)
```
Why it exists: 
- This package contains DAO (Data Access Object) classes responsible for communicating with the database.
- DAO classes encapsulate SQL queries and provide an interface to fetch, insert, update, or delete records.

Why it’s here: 
- It’s separate from database/ to separate business logic (services) from low-level database operations.

###### Files in dao/
- UserDAO.java → Handles database operations for user data (e.g., login verification, student registration retrieval).
- com.studentmanager.database/ (Database Connection Layer)

Why it exists: 
- This package contains the database connection utility, ensuring all database interactions are managed from one place.

Why it’s here: 
- It’s separated from dao/ to decouple connection management from queries.

###### Files in database/
- DatabaseConnection.java → Establishes and manages the JDBC connection with MariaDB.
- com.studentmanager.services/ (Business Logic Layer)

Why it exists: 
This package contains the service layer, which processes business logic before interacting with dao/.
It ensures that servlets only handle HTTP requests, keeping logic modular.

Why it’s here: 
Separates data retrieval (DAO) from business rules.

###### Files in services/
- LoginService.java → Implements the login logic, fetching user credentials via UserDAO.
- com.studentmanager.servlets/ (Controller Layer - Servlets)

Why it exists: 
This package contains Servlets, which handle HTTP requests and responses.
They act as the controller layer in the MVC (Model-View-Controller) architecture.

Why it’s here: 
It’s separate from business logic (services/) to keep servlets focused on request handling.

###### Files in servlets/
- LoginServlet.java → Handles login requests, interacts with LoginService, and redirects users accordingly.
- com.studentmanager.filters/ (Middleware - Security & Request Handling Filters)

Why it exists: 
Filters are executed before servlets, processing incoming requests.
Used for security (authentication, authorization), logging, and CORS policies.

Why it’s here: 
Filters are separate from servlets to maintain modularity and reusability.

###### Files in filters/
- AuthenticationFilter.java → Ensures users are authenticated before accessing certain pages.
- CORSFilter.java → Allows cross-origin requests for APIs.
- com.studentmanager.features/ (Additional Features - Extending the Core System)

Why it exists: 
Stores optional functionalities that enhance the application.

Why it’s here: 
Separates core features from extra modules, improving maintainability.

###### Files in features/
- ExportData.java → Allows exporting student data (e.g., attendance reports) to CSV/PDF.
- NotificationService.java → Sends email/SMS notifications to students and administrators.

#### 3. Dependencies (Libraries and External Packages)
```
├── Dependencies/ 
│ ├── JDK 17 (Default) 
```

Why it exists: 
Holds Java dependencies needed for the project (e.g., JDBC drivers, Jakarta EE libraries).

Why it’s here: 
Ensures proper dependency management for smooth execution.
- JDK 17 (Default) → The project runs on Java 17, ensuring compatibility with modern Java EE features.

#### 4. Project Files (Maven Build & IDE Configurations)
```
├── Project Files/ 
│ ├── pom.xml 
│ ├── nb-configuration.xml 
```

Why it exists: 
This section contains project-related configuration files for Maven and NetBeans.

Why it’s here: 
These files belong to the root of the project because they define global settings.

###### Files in Project Files/
- pom.xml 
- Maven Project Object Model (POM) file, specifying dependencies and build settings.
- nb-configuration.xml 
- NetBeans configuration file, containing project-specific settings for the IDE.

## Summary of Key Design Choices
- MVC Architecture → The project follows Model-View-Controller (MVC) principles: 
- Model (dao/, database/) → Handles database interactions.
- View (jsp/, css/, js/) → Frontend UI elements.
- Controller (servlets/) → Processes user requests and calls services.
- Layered Architecture → Clear separation of database, business logic, and servlets.
- Security & Middleware (filters/) → Implements authentication, authorization, and CORS.
 -Modular Feature Development (features/) → Keeps extra functionalities isolated.

This structure ensures clean, scalable, and maintainable development
### Defining Core Features
The  web app will have these modules:

 #### Instructor Management

 - Register/Login

 - Update Profile

 - View Student Details

#### Student Management

 - Add/Edit/Delete Students

 - View Attendance

 - View Results

 - Attendance System

 - Mark Attendance

 - Generate Reports

#### Result Management

 - Upload/View Results

#### Settings

 - Change Password





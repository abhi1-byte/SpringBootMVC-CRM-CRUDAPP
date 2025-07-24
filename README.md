# 🧾 Customer Relationship Management (CRM) - CRUD Web Application

A simple full-stack **CRM web application** built using **Spring Boot MVC**, **Spring Data JPA**, **JSP**, and **JSTL**. This project demonstrates the implementation of full **CRUD operations** on customer data with a clean separation of concerns using the MVC design pattern.

---

## 🚀 Tech Stack

- **Spring Boot**
- **Spring Web MVC**
- **Spring Data JPA**
- **Lombok**
- **JSP + JSTL**
- **Spring Form Tag Library**
- **CSS**
- **MySQL** (or H2 for testing)

---

## 🎯 Features

- ✅ Display list of customers
- ➕ Add a new customer
- ✏️ Update existing customer details
- ❌ Delete a customer
- 🔁 Two-way data binding using `@ModelAttribute`
- 🌐 JSTL for iteration and conditional logic in JSP
- 🎨 Basic CSS styling for UI

---

## 📂 Project Structure

<pre>
src/
└── main/
    ├── java/
    │   └── com/abhi/
    │       ├── controller/         # Controller classes
    │       ├── dao/                # Data access layer
    │       ├── model/              # JPA entity classes
    │       └── service/            # Business logic layer
    │       └── SpringBootMvcCrmCrudappApplication.java
    ├── resources/
    │   ├── static.css/
    │   │   ├── add-customer-style.css
    │   │   └── style.css
    │   ├── templates/              # (Unused unless Thymeleaf is used)
    │   └── application.properties
    └── webapp/
        └── WEB-INF/
            └── pages/
                ├── customer-form.jsp
                ├── index.jsp
                └── list-customers.jsp

</pre>


---
## 📌 Lombok Usage

This project uses [Project Lombok](https://projectlombok.org/) to reduce boilerplate code like getters, setters, constructors, etc.

Make sure your IDE (like IntelliJ IDEA) has the **Lombok plugin installed and annotation processing enabled**:
- IntelliJ: Preferences → Plugins → Search “Lombok” → Install
- Then: Preferences → Build, Execution, Deployment → Compiler → Annotation Processors → ✅ Enable annotation processing

## 🛠 How to Run

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/abhi1-byte/SpringBootMVC-CRM-CRUDAPP.git
   cd springboot-crm-crudapp
   
2. **Open in IntelliJ (or Eclipse)**
    Go to File > Open > springboot-crm-crudapp directory

3. **Install Lombok Plugin**
   - **In IntelliJ:**
      Preferences > Plugins → Search Lombok → Install
  - **Then:**
     Preferences > Build, Execution, Compiler > Annotation Processors → ✅ Enable annotation processing
     -- IntelliJ will detect it as a Maven project and resolve dependencies automatically
4. **Set Up the Database:**
   #### 🐬 Option 1: Use MySQL
   - Start your MySQL server
   - Create a database named `crm_db` (or any name you prefer)
   - Update your `application.properties` file:

     ```properties
     spring.datasource.url=jdbc:mysql://localhost:3306/crm_db
     spring.datasource.username=root
     spring.datasource.password=your_password
     spring.jpa.hibernate.ddl-auto=update
     ```

   #### 🧪 Option 2: Use H2 (in-memory database)

   - No need to install anything; just update `application.properties` as follows:

     ```properties
     spring.datasource.url=jdbc:h2:mem:crm_db
     spring.datasource.driverClassName=org.h2.Driver
     spring.datasource.username=sa
     spring.datasource.password=
     spring.jpa.database-platform=org.hibernate.dialect.H2Dialect
     spring.jpa.hibernate.ddl-auto=update
     spring.h2.console.enabled=true
     ```
   
### ▶️ Run the Application

- **In IntelliJ:**  
  Right-click on `SpringBootMvcCrmCrudappApplication.java` and select **Run**

- **Or using terminal:**  
  Run the following command in the project folder:

  ```bash
  mvn spring-boot:run

- **Access the App:**
http://localhost:9999/crm

**Learning Highlights**
  ✅ Implemented MVC architecture using Spring Boot and Spring Web MVC (3.x)

  ✅ Used Spring Data JPA along with Lombok to simplify entity/model class design.

  ✅ Applied JSP with JSTL and Spring form tags for dynamic and maintainable UI rendering.

  ✅ Gained hands-on experience with form binding and handling HTTP methods (GET, POST, simulated PUT/DELETE) via hidden fields.

  ✅ Managed application flow and routing using the Spring DispatcherServlet.







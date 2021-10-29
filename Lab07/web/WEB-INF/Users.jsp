<%-- Document : main Created on : 21-Oct-2021, 1:16:56 PM Author : MMM --%> <%@
taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <%@page
contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- Bootstrap CSS -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous"
    />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>Main Page</title>
  </head>

  <body>
    <div class="container-fluid mt-5 bg-dark text-white p-5">
      <div class="row">
        <div class="col-3 text-center">
          <h3>Add User</h3>
          <form action="Users" method="post">
            <div class="input-group mb-3">
              <input
                type="text"
                name="email"
                value=""
                class="form-control"
                placeholder="Email"
                aria-label="Recipient's username"
                aria-describedby="basic-addon2"
              />
            </div>
            <div class="input-group mb-3">
              <input
                type="text"
                name="firstName"
                value=""
                class="form-control"
                placeholder="First Name"
                aria-label="Recipient's username"
                aria-describedby="basic-addon2"
              />
            </div>
            <div class="input-group mb-3">
              <input
                type="text"
                name="lastName"
                value=""
                class="form-control"
                placeholder="Last Name"
                aria-label="Recipient's username"
                aria-describedby="basic-addon2"
              />
            </div>
            <div class="input-group mb-3">
              <input
                type="text"
                name="password"
                value=""
                class="form-control"
                placeholder="Password"
                aria-label="Recipient's username"
                aria-describedby="basic-addon2"
              />
            </div>
            <div class="input-group mb-3">

              <select class="form-select" id="inputGroupSelect01" name="roleSelect">
                <option selected>Choose Role</option>
                <option value="1">System Admin</option>
                <option value="2">Regular User</option>
                <option value="3">Company Admin</option>
              </select>
            </div>
            <div class="d-grid gap-2">
                <input type="hidden" name="action" value="add">
              <button class="btn btn-primary" type="submit">Save</button>
            </div>
          </form>
        </div>
        <div class="col-6 text-center">
          <h3>Manage Users</h3>
          <form action="Users" method="post">
            <table class="table table-dark">
              <thead>
                <tr>
                  <th scope="col">Email</th>
                  <th scope="col">First</th>
                  <th scope="col">Last</th>
                  <th scope="col">Role</th>
                  <th scope="col">Active</th>
                  <th scope="col">Edit</th>
                  <th scope="col">Delete</th>
                </tr>
              </thead>
              <tbody>
                  <%--Loop through users to display on the page --%>
                <c:forEach items="${users}" var="user">
                  <tr>
                    <td>${user.email}</td>
                    <td>${user.first_name}</td>
                    <td>${user.last_name}</td>
                    <td>${user.role}</td>
                     <%--Display check mark if the user is active--%>
                    <c:choose>
                        <c:when test="${user.active}">                           
                            <td><input type="checkbox" value="" checked></td>
                        </c:when>
                        <c:otherwise>
                            <td><input type="checkbox" value=""></td>
                        </c:otherwise>    
                    </c:choose>
                    <td>
                        </form>
                    <%-- This is a form for the edit button--%>
                    <form action="Users" method="post">
                        <input type="hidden" name="action" value="update">
                        <input type="hidden" name="toUpdate" value="${user.email}">
                      <button
                        type="submit"
                        class="btn btn-link editButton"
                      >
                        <svg
                          xmlns="http://www.w3.org/2000/svg"
                          width="16"
                          height="16"
                          fill="#ffd966"
                          class="bi bi-pen"
                          viewBox="0 0 16 16"
                        >
                          <path
                            d="m13.498.795.149-.149a1.207 1.207 0 1 1 1.707 1.708l-.149.148a1.5 1.5 0 0 1-.059 2.059L4.854 14.854a.5.5 0 0 1-.233.131l-4 1a.5.5 0 0 1-.606-.606l1-4a.5.5 0 0 1 .131-.232l9.642-9.642a.5.5 0 0 0-.642.056L6.854 4.854a.5.5 0 1 1-.708-.708L9.44.854A1.5 1.5 0 0 1 11.5.796a1.5 1.5 0 0 1 1.998-.001zm-.644.766a.5.5 0 0 0-.707 0L1.95 11.756l-.764 3.057 3.057-.764L14.44 3.854a.5.5 0 0 0 0-.708l-1.585-1.585z"
                          />
                        </svg>
                      </button>
                    </form>
                    </td>
                    <td>
                    <%-- This is a form for the delete button--%>    
                    <form action="Users" method="post">
                            <input type="hidden" name="action" value="delete"> 
                            <input type="hidden" name="toDelete" value="${user.email}">
                      <button
                        type="submit"
                        class="btn btn-link deleteButton"
                      >
                        <svg
                          xmlns="http://www.w3.org/2000/svg"
                          width="16"
                          height="16"
                          fill="#ff0000"
                          class="bi bi-x-circle-fill"
                          viewBox="0 0 16 16"
                        >
                          <path
                            d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM5.354 4.646a.5.5 0 1 0-.708.708L7.293 8l-2.647 2.646a.5.5 0 0 0 .708.708L8 8.707l2.646 2.647a.5.5 0 0 0 .708-.708L8.707 8l2.647-2.646a.5.5 0 0 0-.708-.708L8 7.293 5.354 4.646z"
                          />
                        </svg>
                      </button>
                    </form>
                    </td>
                  </tr>
                </c:forEach>
              </tbody>
            </table>
          </div>
                
        <div class="col-3 text-center">
          <h3>Edit User</h3>
          <form class="border border-info p-2">
            <div class="input-group mb-3">
              <input
                type="text"
                class="form-control"
                placeholder="Email"
                aria-label="Recipient's email"
                aria-describedby="basic-addon2"
                value="${updatedEmail}"
              />
            </div>
            <div class="input-group mb-3">
              <input
                type="text"
                class="form-control"
                placeholder="First Name"
                aria-label="Recipient's username"
                aria-describedby="basic-addon2"
                value="${updatedFirstName}"
              />
            </div>
            <div class="input-group mb-3">
              <input
                type="text"
                class="form-control"
                placeholder="Last Name"
                aria-label="Recipient's username"
                aria-describedby="basic-addon2"
                value="${updatedLastName}"
              />
            </div>
            <div class="input-group mb-3">
              <input
                type="text"
                class="form-control"
                placeholder="Password"
                aria-label="Recipient's username"
                aria-describedby="basic-addon2"
                value="${updatedPassword}"
              />
            </div>
            <div class="input-group mb-3">
              <select class="form-select" id="inputGroupSelect01" value="${updatedRole}">
                <option>Choose Updated Role</option>
                <option value="1">System Admin</option>
                <option value="2">Regular User</option>
                <option value="3">Company Admin</option>
              </select>
            </div>
            <div class="d-grid gap-2">
              <button class="btn btn-primary" type="button">Save</button>
              <button class="btn btn-primary" action="Users" method="get">Cancel</button>
            </div>
          </form>
        </div>
      </div>
    </div>

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
      crossorigin="anonymous"
    ></script>
  </body>
</html>

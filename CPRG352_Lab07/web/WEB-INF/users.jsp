<%-- Document : main Created on : 21-Oct-2021, 1:16:56 PM Author : MMM --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <div class="container mt-5 bg-dark text-white p-5">
      <div class="row">
        <div class="col-3 text-center">
          <h3>Add User</h3>
          <form>
            <div class="input-group mb-3">
              <input
                type="text"
                class="form-control"
                placeholder="Email"
                aria-label="Recipient's username"
                aria-describedby="basic-addon2"
              />
            </div>
            <div class="input-group mb-3">
              <input
                type="text"
                class="form-control"
                placeholder="First Name"
                aria-label="Recipient's username"
                aria-describedby="basic-addon2"
              />
            </div>
            <div class="input-group mb-3">
              <input
                type="text"
                class="form-control"
                placeholder="Last Name"
                aria-label="Recipient's username"
                aria-describedby="basic-addon2"
              />
            </div>
            <div class="input-group mb-3">
              <input
                type="text"
                class="form-control"
                placeholder="Password"
                aria-label="Recipient's username"
                aria-describedby="basic-addon2"
              />
            </div>
            <div class="input-group mb-3">
              <label class="input-group-text" for="inputGroupSelect01"
                >System Admin</label
              >
              <select class="form-select" id="inputGroupSelect01">
                <option selected>Choose...</option>
                <option value="1">One</option>
                <option value="2">Two</option>
                <option value="3">Three</option>
              </select>
            </div>
            <div class="d-grid gap-2">
              <button class="btn btn-primary" type="button">Save</button>
            </div>
          </form>
        </div>
        <div class="col-6 text-center">
          <h3>Manage Users</h3>
          <table class="table table-dark">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">First</th>
                <th scope="col">Last</th>
                <th scope="col">Handle</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th scope="row">1</th>
                <td>Mark</td>
                <td>Otto</td>
                <td>@mdo</td>
              </tr>
              <tr>
                <th scope="row">2</th>
                <td>Jacob</td>
                <td>Thornton</td>
                <td>@fat</td>
              </tr>
              <tr>
                <th scope="row">3</th>
                <td colspan="2">Larry the Bird</td>
                <td>@twitter</td>
              </tr>
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
                placeholder="First Name"
                aria-label="Recipient's username"
                aria-describedby="basic-addon2"
              />
            </div>
            <div class="input-group mb-3">
              <input
                type="text"
                class="form-control"
                placeholder="Last Name"
                aria-label="Recipient's username"
                aria-describedby="basic-addon2"
              />
            </div>
            <div class="input-group mb-3">
              <input
                type="text"
                class="form-control"
                placeholder="Password"
                aria-label="Recipient's username"
                aria-describedby="basic-addon2"
              />
            </div>
            <div class="input-group mb-3">
              <label class="input-group-text" for="inputGroupSelect01"
                >System Admin</label
              >
              <select class="form-select" id="inputGroupSelect01">
                <option selected>Choose...</option>
                <option value="1">One</option>
                <option value="2">Two</option>
                <option value="3">Three</option>
              </select>
            </div>
            <div class="d-grid gap-2">
              <button class="btn btn-primary" type="button">Save</button>
              <button class="btn btn-primary" type="button">Cancel</button>
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

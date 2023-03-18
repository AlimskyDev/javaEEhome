
<div class="modal  fade" id="Modal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" data-bs-theme="dark">
  <div class="modal-dialog modal-lg" >
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">New Task</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <form action="/addTask" method="post">
      <div class="modal-body">

          <div class="mb-3">
            <label class="col-form-label"style="color: white">Name:</label>
            <input type="text" class="form-control" name="name">
          </div>
          <div class="mb-3">
            <label for="message-text" class="col-form-label" style="color: white">Description:</label>
            <textarea class="form-control" id="message-text" name="descr"></textarea>
          </div>
          <div class="mb-3">
            <label for="message-text" class="col-form-label" style="color: white">Dead line:</label>
          <input type="date" class="form-control" name="date">
          </div>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal"style="color: white">Close</button>
        <button class="btn btn-primary">Add task</button>
      </div>
      </form>
    </div>
  </div>
</div>

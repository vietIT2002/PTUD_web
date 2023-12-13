<style>
    /* Apply styles to the form title */
h1.tieude {
  font-size: 24px;
  color: #333; /* Change the color to your preference */
  text-align: center;
  padding-bottom: 30px;
}

/* Style the form container */
form[name="nhacungcap-formadd"] {
  max-width: 200px; /* Adjust the width as needed */
  margin-left: 200px;
}

/* Style the form fields */
.wrap-field {
  margin-bottom: 20px;
}

label {
  display: block;
  font-weight: bold;
  margin-bottom: 5px;
}

input[type="text"],
input[type="email"],
input[type="url"],
input[type="tel"] {
  width: 70%;
  padding: 8px;
  box-sizing: border-box;
  border: 1px solid #ccc;
  border-radius: 4px;
}

/* Style the submit button */
input[name="btnnccadd"] {
  background-color: #4caf50; /* Green color, change as needed */
  color: white;
  padding: 10px 15px;
  font-size: 16px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[name="btnnccadd"]:hover {
  background-color: #45a049; /* Darker green on hover */
}

</style>
<h1 class="tieude">Thêm nhà cung cấp</h1>
<form name="nhacungcap-formadd" method="POST" action="./xulythem.php" enctype="multipart/form-data">
    <div class="clear-both"></div>
    <div class="box-content">
    <div class="wrap-field">
        <label>Tên nhà cung cấp: </label>
        <input type="text" name="name" value="" />
        <div class="clear-both"></div>
    </div>
    <div class="wrap-field">
        <label>Email: </label>
        <input type="email" name="email" value="" placeholder="VD: viet823@gmail.com"/>
        <div class="clear-both"></div>
    </div>
    <div class="wrap-field">
        <label>Website: </label>
        <input type="url" name="website" value="" placeholder="VD: https://www.google.com"/>
        <div class="clear-both"></div>
    </div>
    <div class="wrap-field">
        <label>SĐT: </label>
        <input type="tel" name="sdt" value="" pattern="[0]{1}[0-9]{9}" placeholder="VD: 0123456789" />
        <div class="clear-both"></div>
    </div>
    <input name="btnnccadd" type="submit" title="Lưu nhà cung cấp" value="Lưu" />
    </div>
</form>
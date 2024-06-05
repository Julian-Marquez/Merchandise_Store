<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Edit User Details</title>
  <link rel="stylesheet" href="css/editprofile.css">

</head>
<body>
 <!-- multistep form -->
<div id="msform">
<form action="EditUser" method="post" onsubmit="return validatePassword()">
  <!-- progressbar -->
  <input type="hidden" id="selectedProfilePic" name="selectedProfilePic" />
  <div class="image-buttons" > 
  <button  onclick="selectProfilePic('images/profile_pic1.png')" name="editpic" value="images/profile_pic1.png" type="button">
  <img src="images/profile_pic1.png"></img>
  </button>
   <button onclick="selectProfilePic('images/profile_pic2.png')" name="editpic" value="images/profile_pic2.png" type="button">
  <img src="images/profile_pic2.png"></img>
  </button>
   <button onclick="selectProfilePic('images/profile_pic3.png')" name="editpic" value="images/profile_pic3.png" type="button">
  <img src="images/profile_pic3.png"></img>
  </button>
    <button onclick="selectProfilePic('images/profile_pic4.png')" name="editpic" value="images/profile_pic4.png" type="button">
  <img src="images/profile_pic4.png"></img>
  </button>
   <button onclick="selectProfilePic('images/profile_pic5.png')" name="editpic" value="images/profile_pic5.png" type="button">
  <img src="images/profile_pic5.png"></img>
  </button>
    <button onclick="selectProfilePic('images/profile_pic6.png')" name="editpic" value="images/profile_pic6.png" type="button">
  <img src="images/profile_pic6.png"></img>
  </button>
  <script>
// JavaScript function to set the value of the selectedProfilePic input field
function selectProfilePic(profilePicPath) {
  document.getElementById('selectedProfilePic').value = profilePicPath;
}
</script>
  </div>
  
  

  
  <!-- fieldsets -->
  <fieldset>
    <h2 class="fs-title">Edit your account</h2>
        <input type="text" name="editfname" placeholder="New First Name" />
    <input type="text" name="editlname" placeholder="New Last Name" />
    <input type="email" name="editemail" placeholder="New Email" />
    <input type="password" id="editpassword" name="editpassword" placeholder="New Password" />
    <input type="text" name="editusername" placeholder="New User Name" />
    <input type="submit" class="next action-button"  />
  </fieldset>
    <script>
  function validatePassword() {
    var password = document.getElementById("editpassword").value;
    
    if (password === "") {
        return true;
      }

    // Check if password length is at least 8 characters
    if (password.length < 8) {
      alert("Password must be at least 8 characters long");
      return false;
    }


    
    // Check if password contains at least one symbol
    if (!/[!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?]+/.test(password)) {
      alert("Password must contain at least one symbol");
      return false;
    }

    return true;
  }
</script>
 </form>
</div>
</body>
</html>

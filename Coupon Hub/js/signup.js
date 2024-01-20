function validation(){
    if(document.FormFill.Name.value==""){
        document.getElementById("result").innerHTML="Enter Username*";
        return false;
    }
    if(document.FormFill.Name.value.length<6){
        document.getElementById("result").innerHTML="Atleast 6 characters*";
        return false;
    }
    if(document.FormFill.Email.value==""){
        document.getElementById("result").innerHTML="Enter your Email";
        return false;
    }
    if(document.FormFill.Number.value==""){
        document.getElementById("result").innerHTML="Enter your Phone Number";
        return false;
    }
    if(document.FormFill.Number.value.length<10){
        document.getElementById("result").innerHTML="Phone Number must be 10 digit";
        return false;
    }
    if(document.FormFill.Password.value==""){
        document.getElementById("result").innerHTML="Enter your Password";
        return false;
    }
    if(document.FormFill.Password.value.length<6){
         document.getElementById("result").innerHTML="Password be atleast 6 characters long*";
        return false;
    }
    if(document.FormFill.ConfirmPassword.value==""){
        document.getElementById("result").innerHTML="Confirm your Password";
        return false;
    }
    if(document.FormFill.ConfirmPassword.value!==document.FormFill.Password.value){
        document.getElementById("result").innerHTML="Confirmation Failed";
        return false;
    }
   
    if(document.FormFill.Password.value==document.FormFill.ConfirmPassword.value){
        popup.classList.add("open-slide");
        return false;
    }
   
}
var popup = document.getElementById('popup');
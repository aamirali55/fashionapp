class SignUp {
 

  bool user(String email, String password) {
   
    const String savedEmail = 'aamiralisoomro0317@gmail.com';
    const String savedPassword = 'aamir123';


    if (email == savedEmail && password == savedPassword) {
      return true; 
    } else {
      return false; 
    }
  }
}

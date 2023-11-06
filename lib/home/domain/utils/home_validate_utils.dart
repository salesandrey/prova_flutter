class HomeValidateUtils {

  (bool,String) validateText(String text) {

    if(text.isEmpty) return (false,"O campo texto não pode ser vazio.");

    return (true,"");
  }
}
import 'dart:html';
int x=0,y=0;
void main(){
  querySelector('#enter')!.onClick.listen(clickonenter);
  updateCoordinates(0, 0);
}

Environment myEnvironment=new Environment("wood");
clickonenter(e){
  
  InputElement input = String.querySelector("#commands");

  input.style.borderColor="#55FF55";
  String output="";
  if(input.value=='left'){
    output="You are going left now. ";
  } else if(input.value=='right'){
    output="You are going right now.";
  } else if(input.value=='up'){
    output="You are going up now.";
  } else if(input.value=='down'){
    output="You are going down now.";
  } else{
    output="Use left, right, up, down Please....";
  }
  var outputHTML="<div>${output}</div>";
  querySelector("#output")!.appendHtml(outputHTML);

}
void updateCoordinates(int rel_x, int rel_y){
  
  x += rel_x;
  y += rel_y;

  querySelector("#coordinates")!.innerHtml="place:$x,$y";

}

class Environment{
  String name;
  Environment(this.name);
  String stumbleUpon(){
    return"${this.name}You stumbled upon something";
  }
}

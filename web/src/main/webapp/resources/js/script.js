
// This function display values
 
let index = 0;
var btn;

txt1 = document.getElementById("cardName");
txt2 = document.getElementById("cardNumber");
txt3 = document.getElementById("accNumber");
txt4 = document.getElementById("cardMonth");
txt5 = document.getElementById("cardYear");
txt6 = document.getElementById("CCVNumber");
txt7 = document.getElementById("Amount");


function pulseN(event) {
    if (index === 0) {
        txt1.value += event.target.value;
    } else if (index === 1) {
        txt2.value += event.target.value;
    } else if (index === 2) {
        txt3.value += event.target.value;
    } else if (index === 3) {
        txt4.value += event.target.value;
    } else  if(index ===4) {
        txt5.value += event.target.value;
    } else  if(index ===5) {
        txt6.value += event.target.value;
    } else  if(index ===6) {
        txt7.value += event.target.value;
    }

}
buttons = document.getElementsByClassName("button");
for (i = 0; i < buttons.length; i++) {
    buttons[i].addEventListener('click', pulseN, false);

}


function displayDate(evento){
index++;
}

btn = document.getElementById("enterbnt").addEventListener("click" , displayDate);


document.addEventListener('readystatechange', asignarEventos);
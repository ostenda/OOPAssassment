function clearScreen() {
    document.getElementById("result").value = "";
}

function addition(){
    firstOperator = document.getElementById("result").value;
    secondOperator = document.getElementById("result").value;

    return firstOperator + secondOperator;
}


// This function display values
function display(value) {
    document.getElementById("result").value += value;
}

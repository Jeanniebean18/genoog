var score = 0;
var counter=0

var submit = document.getElementById("submit");
var thanks = document.getElementById("thanks");//
// var q1o2 = document.getElementById("q1o2"); //
// var q1o3 = document.getElementById("q1o3"); //
// var q1o4 = document.getElementById("q1o4"); //
// var result = document.getElementById("result");//


submit.onclick = thanksmessage;
// q1o2.onclick = process_answer_submission2;
// q1o3.onclick = process_answer_submission3;
// q1o4.onclick = process_answer_submission4;


var thanksmessage = function() {
  thanks.innerHTML = "thanks";

}

// var process_answer_submission2 = function() {
//  score = score + 3;
// }
//
// var process_answer_submission3 = function() {
//  score = score + 2;
// }
//
// var process_answer_submission4 = function() {
//  score = score + 1;
// }




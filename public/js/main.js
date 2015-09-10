var score = 0;
var counter=0

var questionOne = document.getElementById("q1o1"); //
// var q1o2 = document.getElementById("q1o2"); //
// var q1o3 = document.getElementById("q1o3"); //
// var q1o4 = document.getElementById("q1o4"); //
// var result = document.getElementById("result");//


questionOne.onclick = tally;
// q1o2.onclick = process_answer_submission2;
// q1o3.onclick = process_answer_submission3;
// q1o4.onclick = process_answer_submission4;


var tally = function() {
 score++;
 counter++;
 finalScore();
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


var finalScore = function() {
  var score_announce = "You answered " + score + " out of 4 questions correct";
  result.innerHTML = score_announce;// feeding total_result div with score announcement
};

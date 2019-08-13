function a_req()
{
    var b = $('#b').val();
    var t = $('#t').val();
    if (b.length === 0 || t.length === 0)
    {
        alert('No empty values');
        return false;  
    }
    if (t.length < 5)
    {
        alert('Title has to be at least 5 characters long');
        return false;  
    }
}
// this function will only show the form for submitting answers
function submit_answer(qid)
{
    $('#qid').val(qid);
    var q_id = document.getElementById('qid');
 //   var s = document.getElementById(variable);
  //          s.value = "new value";
    alert(q_id) ;
    $('#qid').val(q_id);
    alert( $('#qid').val());
}
function save_answer()
{
  /*  $.ajax
    ({
        type: "POST",
        url: ('answers#create'),
        data : {comment: $('#b').val(), user_id: $('#uid').val(), qid: $('#qid').val()},
        success: function(msg)
        {
            alert('Answer Saved','Alert');
        },
        error: function()
        {
            alert("Error");
        }
    });*/
}
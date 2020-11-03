$(document).ready ->

  $('#lastname').keyup ->
    $("#l").remove()
    last_name = $('#lastname').val()
    if last_name == ''
     $('#lastname').after('<span id="l" class="error">Last name is required</span>')
    else if not last_name.match(/^[A-Za-z]+$/)      
      $('#lastname').after('<span id="l" class="error">only alphabets are required</span>')
    else if last_name.length <= 3
      $('#lastname').after('<span id="l" class="error">minimum length 4</span>')
    else if last_name.length >= 9
      $('#lastname').after('<span id="l" class="error">maximum length 8</span>')
  
  $('#firstname').keyup ->
    $("#f").remove()
    first_name = $('#firstname').val()
    valid = first_name.match(/^[A-Za-z]+$/)
    if first_name == ''
     $('#firstname').after('<span id="f" class="error">First name is required</span>')
    else if not valid
      $('#firstname').after('<span id="f" class="error">only alphabets are required</span>')
    else if first_name.length <= 3
      $('#firstname').after('<span id="f" class="error">minimum length 4</span>')
    else if first_name.length >= 9
      $('#firstname').after('<span id="f" class="error">maximum length 8</span>')

  $('#email').keyup ->
    e_mail = $('#email').val()
    $('#e').remove()
    mail_format =  /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/
    if e_mail.length < 3
      $('#email').after('<span id="e" class="error">email is required</span>')
    else if not mail_format.test(e_mail)
        $('#email').after('<span id="e" class="error">invalid email</span>')

  $('#psw').keyup ->
    $('#p').remove()
    psw1 = $('#psw').val()
    if psw1 == ''
      $('#psw').after('<span id="p" class="error">Password must be required</span>')
    else if psw1.length <= 8 
      $('#psw').after('<span id="p" class="error">Password must be at least 8 characters long</span>')
    else if not psw1.match(/^(?=.*[0-9])/)
      $('#psw').after('<span id="p" class="error">Use atleast 1 digit</span>')
    else if not psw1.match(/^(?=.*[A-Z])/)
      $('#psw').after('<span id="p" class="error">Use atleast 1 Upper case characters</span>')
    else if not psw1.match(/^(?=.*[\!\@\#\$\%\^\&\*])/)
      $('#psw').after('<span id="p" class="error">Use atleast 1  special characters</span>')
    else if not psw1.match(/^(?=.*[a-z])/)
      $('#psw').after('<span id="p" class="error">Use atleast 1 lower case characters</span>') 
    else if psw1.length > 16 
      $('#psw').after('<span id="p" class="error">Password must be at less than 16 characters long</span>')

  $('#city').keyup ->
    $('#c').remove()
    city1 = $('#city').val()
    if not city1.match(/^[A-Za-z]+$/)      
      $('#city').after('<span id="c" class="error">only alphabets are required</span>')
    else if city1.length <= 3
      $('#city').after('<span id="c" class="error">city should be atleast 3 characters</span>')


  $('#code').keyup ->
    $('#a').remove()
    code1 = $('#code').val()
    if not code1.match( /^[0-9]+$/)
      $('#code').after('<span id="a" class="error"> only numeric digits  required</span>')
    else if code1.length < 6 
      $('#code').after('<span id="a" class="error"> 6 digit numeric required</span>')
    else if code1.length > 6 
      $('#code').after('<span id="a" class="error"> 6 digit numeric required</span>')

  $('#phone').keyup ->
    $('#m').remove()
    mobile = $('#phone').val()
    if not mobile.match(/^[0-9]+$/)
      $('#phone').after('<span id="m" class="error"> Phone number should be numeric</span>')
    else if mobile.length <= 7
      $('#phone').after('<span id="m" class="error">phone number invalid</span>')
    else if mobile.length >= 11
      $('#phone').after('<span id="m" class="error">phone number invalid</span>')

   

 $(document).ready ->
  last_name = $('#lastname').val()
  first_name = $('#firstname').val()
  e_mail = $('#email').val()
  psw1 = $('#psw').val()
  city1 = $('#city').val()
  code1 = $('#code').val()
  mobile = $('#phone').val()
  $('#submit').click ->
    if (last_name.length == '') and (first_name.length =='')  and (e_mail.length =='') and (psw1.length == '') and (city1.length ==  '') and (code1.length == '') and (mobile.length =='') 
      alert 'Please fill the fields'
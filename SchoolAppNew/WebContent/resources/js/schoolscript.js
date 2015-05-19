$(document).ready(function() {
	
	$('#datePicker')
    .datepicker({
        format: 'mm/dd/yyyy',
        startDate: '01/01/2010',
        endDate: '12/30/2020'
    })
    .on('changeDate', function(e) {
        // Revalidate the date field
        $('#addStudent').formValidation('revalidateField', 'date');
    });
  /*   // Generate a simple captcha
    function randomNumber(min, max) {
        return Math.floor(Math.random() * (max - min + 1) + min);
    };
    $('#captchaOperation').html([randomNumber(1, 100), '+', randomNumber(1, 200), '='].join(' '));
 */
    $('#addStudent').formValidation({
        message: 'This value is not valid',
        icon: {
           // valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            studentFirstName: {
                row: '.col-sm-4',
                validators: {
                    notEmpty: {
                        message: 'The first name is required'
                    }
                }
            },
            studentLastName: {
                row: '.col-sm-4',
                validators: {
                    notEmpty: {
                        message: 'The last name is required'
                    }
                }
            },
            studentFatherName: {
                row: '.col-sm-5',
                validators: {
                    notEmpty: {
                        message: 'The Student Father name is required'
                    }
                }
            },
            studentMotherName: {
                row: '.col-sm-5',
                validators: {
                    notEmpty: {
                        message: 'The Student Mother name is required'
                    }
                }
            },
            gender: {
                validators: {
                    notEmpty: {
                        message: 'The gender is required'
                    }
                }
            },
            section: {
                validators: {
                    notEmpty: {
                        message: 'The section is required'
                    }
                }
            },
            fee: {
                validators: {
                    notEmpty: {
                        message: 'The fee is required'
                    }
                }
            },
            religion: {
                validators: {
                    notEmpty: {
                        message: 'The religion is required'
                    }
                }
            },
            caste: {
                validators: {
                    notEmpty: {
                        message: 'The caste is required'
                    }
                }
            },
            mobileNo: {
                validators: {
                    notEmpty: {
                        message: 'The Mobile Number is required'
                    }
                }
            },
            village: {
                validators: {
                    notEmpty: {
                        message: 'The Address is required'
                    }
                }
            },
            studentDob: {
                    validators: {
                        notEmpty: {
                            message: 'The Student Date Of Birth  is required'
                        },
                        date: {
                            format: 'MM/DD/YYYY',
                            min: '01/01/2010',
                            max: '12/30/2020',
                            message: 'The date is not a valid'
                        }
                    }
                }
        }
    });
});